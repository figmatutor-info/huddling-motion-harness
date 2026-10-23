# 레퍼런스 — launch-b
본 것: `references/README.md` · `references/ref-b/README.md` · `references/ref-b/snapcn-check-cycle.png` · `references/ref-b/snapcn-word-wheel.png` · `references/ref-b/snapcn-word-flip.png` · `references/ref-b/snapcn-phone-frame.png` · `references/soural/README.md` (`soural/prompt.md`는 원문이라 README 정리만 기준으로 씀, 문장 옮기지 않음)
기준: `out/launch-b/BRIEF.md` (분위기 "빠르고 경쾌한", 장면 7개) · `references/README.md` "원하는 것" 메모

폰 화면 구성: **넣지 않음.** 아래 "가져올 것"에 폰 이어지는 이동 · `phone-rise` · `phone-push` · 폰 프레임 카메라처럼 폰 프레임 안 화면이 주인공인 항목이 없다. 그래서 이 영상의 폰 화면 장면 상한은 기본값 그대로다 (`docs/motion.md` 4-1). 이유: 브리프의 폰 화면 장면은 장면 3 · 6 두 개뿐이라 상한을 늘릴 필요가 없고, 사람이 수정 요청 1 ④에서 "폰 화면 상한 기본 2 그대로"라고 정했다 (`_plan/decisions.md`). 장면 3의 폰 솟아오르기는 브리프가 `docs/motion.md` 3장에서 바로 고른 Pattern이고, 이 파일에서 가져온 것이 아니다.

## 가져올 것
| # | 구성 문법 (레퍼런스에서 본 것) | 우리 것으로 (docs 경로 · 토큰 · Pattern) |
|---|---|---|
| 1 | 장면 순서: 글자 장면으로 열고, 제품 장면이 이어지고, 글자 장면(엔드)으로 닫는 런칭 필름 구성. 숏폼 · 썸네일 톤이 아님 (메모) | `docs/motion.md` 4-1 장면 종류 (글자 장면은 오프닝 · 엔드 카드만, 같은 종류 연속 2개까지) · `docs/video.md` 맨 위 톤 문단. 브리프 장면 1 → 7 순서 그대로 |
| 2 | 배경: 거의 검정 바탕 + 은은한 점 격자 + 가장자리 푸른 빛 (메모 · 참고 메모의 Wall Cut 포스터) | `docs/video.md` 2장 `video-bg` · `video-dots` · `video-light` · `video-light-pos` · `video-noise` · `docs/motion.md` 3장 영상 공통 배경 `bg.html` · 4-5 배경 (장면 바뀔 때 빛 다음 번호, 장면 안 `video-light-drift`) |
| 3 | 배경 대비로 경쾌하게: 어두운 장면 사이에 밝은 장면을 끼워 박자를 바꿈 (Check Cycle · Word Wheel · Word Flip 포스터의 밝은 바탕을 "밝은 장면이 있다"는 구성으로만) | `docs/motion.md` 4-5 배경 2종 (어두운 · `video-bg-light`, 같은 배경 연속 제한) · `docs/video.md` 2장 밝은 배경 표. 엔드 카드는 `video-end-gradient` |
| 4 | 글자: 작은 단색 SemiBold, 여백 넓음, 한 단어만 강조 (메모 · Word Flip 포스터의 "한 문장 안 한 단어 강조" 구성) | `docs/video.md` 3장 `video-headline` · `video-text` · `video-accent` (한 단어) · `video-tracking-tight`. 장면 1 · 7은 `video-hero` (히어로 2회, `docs/motion.md` 4-4). 장면 5는 브리프대로 `video-headline` |
| 5 | 글자 등장: 문장이 단어 단위로 빠르게 차례로 붙고 잠깐 머묾 (Word Flip의 "쳐 넣기 → 머묾" 리듬 중 등장 부분만) | `docs/motion.md` 3장 오프닝 글자 `headline.html` (`firstVisible`) · 텍스트 등장 `headline.html` · `enter` · `stagger` · `blur-in` · 머무름은 4-2 |
| 6 | 박자마다 하나씩: 요소가 일정 간격으로 하나씩 바뀌거나 나옴 (prompt-motion twoclipping · Check Cycle의 일정 간격 리듬) | 장면 2: `docs/motion.md` 3장 카드 순서 등장 `card-stack.html` (A 같은 방향 1→2→3 또는 B 카드 레일 `flick`) · `stagger` 간격 고정 · 4-3 동시에 움직이는 요소 |
| 7 | 빠르게 돌다 감속해 한 값에 안착 (Word Wheel의 감속 안착 리듬. 넘침 없이) | 장면 6의 숫자 리듬에만: `docs/motion.md` 3장 숫자 카운트업 `count-up.html` · `emphasis` (`entrance` 곡선, 폭 고정). 숫자 리듬 항목이며 폰 프레임 구성 항목이 아님 |
| 8 | 장면마다 UI 인터랙션 하나 — 탭 (메모) | 장면 4: `docs/motion.md` 3장 버튼 눌림 `button-press.html` + 눌림 링 `press-ring.html` · `emphasis` · `docs/video.md` 5장 `video-logo-ring` · 카메라는 4-6 밀고 들어가기 (`standard`) |
| 9 | 앞 요소가 다음 요소로 모양을 이어 바꾸는 전환 (twoclipping의 "버튼 → 다음 UI") | 장면 4 → 5 (제출하기 버튼 → 승인 배지)에 맞음: `docs/motion.md` 3장 점 수렴 `converge.html` · `transition` · `enter` · 4-7 장면 전환 · 1장 Blur "전환: 없음" |
| 10 | 화려한 전환 · 무빙이 많음 (메모) | `docs/motion.md` 4-7 움직임이 이어지는 전환 (빛 줄기 `light-streak.html` · `video-streak` · 점 수렴 · 줌 통과). 나머지는 기본 컷. 줌 통과는 4-6대로 제품 → 숫자 흐름에 한 번 |
| 11 | 카메라가 늘 조금씩 다가감 (메모 "카메라가 다가가거나") — 제품 · 글자 장면 공통 | `docs/motion.md` 3장 상시 드리프트 `drift.html` · 4-6 (모든 장면 드리프트 + 장면 카메라 하나, 글자 · 강조 장면은 드리프트만) |
| 12 | 강조 장면: 결과 하나를 크게, 글자와 부품을 한 장면에 (Check Cycle의 "마지막에 줄 전체 정리 후 머묾" 리듬) | 장면 5: `docs/motion.md` 3장 배지 강조 `badge-pulse.html` · `enter` · `emphasis` · 4-1 강조 장면 · `docs/video.md` 5장 주인공 하나 · `video-shadow-ui` |
| 13 | 마무리: 슬로건 → 로고 순서로 닫힘 | 장면 7: `docs/motion.md` 3장 엔드 카드 `end-card.html` · (선택) 로고 빛 맞음 `logo-hit.html` · 엔드 바탕 바꾸기 `end-shift.html` · `docs/video.md` 2장 `video-end-gradient` · 3장 `video-logo-height` |

## 가져오지 않을 것
| # | 무엇 | 이유 (docs 경로) |
|---|---|---|
| 1 | 레퍼런스의 색: 포스터의 회백 바탕 · 파랑-보라 그라데이션 글자 · 파란 체크박스 · Phone Frame의 밝은 베젤 · soural 바닥 색 | `docs/motion.md` 5장 레퍼런스 색 금지 · `docs/video.md` 3장 글자 그라데이션 금지 · 색은 `docs/design.md` 1장 · `docs/video.md` 2 · 4장 토큰만 |
| 2 | 레퍼런스의 폰트 | `docs/motion.md` 5장 · `docs/design.md` 2장 · `docs/video.md` 3장 (Pretendard만) |
| 3 | 레퍼런스의 초 · 각도 · 거리 · 좌표 · 시간표 · BPM (ref-b 표의 페이지 표기 포함) | `docs/motion.md` 1 · 2장 토큰만, 5장 좌표 금지 · `references/ref-b/README.md` 맨 위 "값은 가져오지 않는다" |
| 4 | 폰 프레임 "기울며 들어옴" 등장 (Phone Frame) | `docs/motion.md` 5장 회전 등장 (rotateZ) |
| 5 | Word Flip에서 나가는 단어가 "살짝 내려갔다 올라가는" 움직임 | `docs/motion.md` 5장 오버슈트 · 1장 Easing (네 곡선 모두 넘침 없음) |
| 6 | 폰 화면 구성 전부: Phone Frame 크레인(아래에서 올라가며 다가가 정면) · 고정 기울기 · soural 폰 이어지는 이동 · Remotion device rise를 새 항목으로 · Checkout Push 구성 | 브리프 폰 화면 장면은 장면 3 · 6 두 개라 필요 없음 · `_plan/decisions.md` 수정 요청 1 ④ "폰 화면 상한 기본 2 그대로" · `docs/motion.md` 4-1 (넣으면 상한이 늘어남) |
| 7 | 같은 자리 단어 바꾸기 반복 (Check Cycle · Word Wheel 단어 기둥 · Word Flip 단어 교체) | 브리프 문구가 고정되어 있고 바꿔 넣을 단어가 화면 · 부품에 없음 (`CLAUDE.md` · `out/launch-b/BRIEF.md` "문구는 화면에 실제로 있는 것만"). Pattern은 `docs/motion.md` 3장 `word-swap.html`에 있으나 이 영상에서는 쓰지 않음 |
| 8 | 두 줄이 반대 방향으로 흐르는 물량 벽 (Magic UI) | 브리프에 물량 장면 없음 · 두 줄 반대 방향은 `docs/motion.md` 3장 `wall.html`(한 방향)에 없음 |
| 9 | soural의 캐릭터 · 타사 앱 아이콘 · 사운드 · 렌더 형식 | `references/soural/README.md` "가져오지 않을 것" · `docs/motion.md` 맨 위 형식 · 화면은 `src/screens/` · `src/parts/`만 |
| 10 | snapcn Pro(Wall Cut · Checkout Push)의 소스 · 수치, 레퍼런스 영상 파일 | `references/README.md` 사용 규칙 (Pro는 구성만, 영상 내려받지 않음) |
| 11 | techtactician · Remotion 링크의 장면 내용 | `references/ref-b/README.md` (글로 확인되는 구성 없음 · `phone-rise.html` 출처로 이미 반영) |

## 참고 (메모에만 있는 것)
- "장면마다 UI 인터랙션(탭 · 스와이프 · 입력) 하나": `references/README.md` 메모에 "motion.md 반영 예정"으로만 있고 `docs/motion.md`에는 아직 없음. 게이트 조건이 아니다. 이 영상에서는 장면 4의 탭(가져올 것 8)만 인터랙션으로 쓰고, 스와이프 · 입력은 만들지 않는다.
- "짧아도 무빙이 많음": `references/README.md` 측정 방법(움직이는 프레임 비율)은 렌더 게이트에서 critic이 잰다. 여기서는 가져올 것 6 · 9 · 10 · 11로 움직임을 채운다는 방향만.
- 메모의 글자 크기 범위는 `docs/video.md` 3장 `video-headline` 범위와 같은 뜻으로 보고, 이 파일에는 토큰 이름만 적었다.

## 질문 후보 (docs에 없는 것)
| # | 질문 | 기본값 |
|---|---|---|
| 1 | 폰 등장 뒤 위아래로 천천히 떠 있는 움직임(Phone Frame)을 쓸까? `docs/motion.md`에 해당 Pattern · 토큰이 없다 | 쓰지 않음. 폰 장면 카메라는 상시 드리프트(`drift.html`)만 |
