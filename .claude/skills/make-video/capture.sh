#!/usr/bin/env bash
# 레퍼런스 영상 → 캡처 프레임 + 모아보기 (make-video 1-0단계, 메인이 돌린다)
# 쓰는 법: .claude/skills/make-video/capture.sh <영상 파일> <references/폴더>
# 만드는 것 (<폴더>/frames/ 안, 다시 돌리면 지우고 새로 만든다):
#   tNNN.N.png    0.5초 간격 프레임 (폭 960). 파일 이름 = 영상 안 시각(초)
#   cut-tNNN.N.png 장면이 크게 바뀐 직후 프레임 (scene 0.3 초과)
#   sheet-NN.png  0.5초 프레임 30장씩 6열 × 5줄 (칸 하나 폭 320). 왼쪽 위부터 줄 순서
#   info.md       길이 · 크기 · fps · 모아보기 칸 → 프레임 파일 대응 · 컷 목록
# 원본 영상은 옮기거나 고치지 않는다. 초 · 크기는 구성을 알아보기 위한 위치 표기이고 docs 값으로 쓰지 않는다.
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "쓰는 법: $0 <영상 파일> <references/폴더>" >&2
  exit 1
fi
src="$1"
dir="$2/frames"
[ -f "$src" ] || { echo "영상 파일 없음: $src" >&2; exit 1; }

rm -rf "$dir"
mkdir -p "$dir"

# 0.5초 간격 프레임 → 시각 이름으로 바꾸기
ffmpeg -loglevel error -i "$src" -vf "fps=2,scale=960:-2" "$dir/_%04d.png"
for f in "$dir"/_*.png; do
  n=$((10#$(basename "$f" .png | tr -d _) - 1))
  mv "$f" "$dir/$(printf 't%05.1f.png' "$(echo "$n * 0.5" | bc)")"
done

# 장면 컷 직후 프레임 (showinfo의 pts_time으로 이름)
cuts=$(ffmpeg -hide_banner -i "$src" -vf "select='gt(scene,0.3)',showinfo" -f null - 2>&1 \
  | grep -o 'pts_time:[0-9.]*' | cut -d: -f2 || true)
for t in $cuts; do
  ffmpeg -loglevel error -ss "$t" -i "$src" -frames:v 1 -vf "scale=960:-2" \
    "$dir/$(printf 'cut-t%05.1f.png' "$t")"
done

# 모아보기: 0.5초 프레임 30장씩
ffmpeg -loglevel error -i "$src" -vf "fps=2,scale=320:-2,tile=6x5" "$dir/sheet-%02d.png"

# info.md
dur=$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$src")
size=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 "$src")
fps=$(ffprobe -v error -select_streams v:0 -show_entries stream=r_frame_rate -of default=nw=1:nk=1 "$src")
{
  echo "# 캡처 — $(basename "$src")"
  echo "길이 ${dur}초 · 크기 ${size} · fps ${fps} (위치 표기용, docs 값으로 쓰지 않음)"
  echo
  echo "## 모아보기"
  for s in "$dir"/sheet-*.png; do
    k=$((10#$(basename "$s" .png | cut -d- -f2) - 1))
    a=$(echo "$k * 15" | bc); b=$(echo "$k * 15 + 14.5" | bc)
    echo "- $(basename "$s"): 칸 1–30 = t$(printf '%05.1f' "$a") … t$(printf '%05.1f' "$b") (칸 하나 = 0.5초, 왼쪽 위부터 줄 순서)"
  done
  echo
  echo "## 장면 컷 (scene 0.3 초과)"
  if [ -z "$cuts" ]; then echo "- 없음"; fi
  for t in $cuts; do echo "- $(printf 'cut-t%05.1f.png' "$t")"; done
} > "$dir/info.md"

echo "완료: $dir ($(ls "$dir"/t*.png | wc -l | tr -d ' ')장 · 컷 $(echo "$cuts" | grep -c . || true)개)"
