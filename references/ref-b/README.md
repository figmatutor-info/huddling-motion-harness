# ref-b — 참고 레퍼런스 (참고용만)

결과물 · starter · 공통 조각에 넣지 않음.

- 페이지 글만 읽고 정리했다 (2026-10-23). 코드 · 프롬프트 문장은 옮기지 않았고, 기법만 참고한다.
- 값(시간 · 곡선 · 각도 · 거리)은 가져오지 않는다. 표의 초 · 각도는 어떤 움직임인지 알아보기 위한 페이지 표기다. 실제 값은 `docs/motion.md` 토큰으로만 쓴다.
- 이미지는 페이지에서 MIT로 확인된 것만 저장했다 (`snapcn-*.png`, 각 페이지 미리보기 포스터). 영상 파일은 내려받지 않았다.

| 이름 | 어떤 움직임인지 (무엇이 · 어떻게 · 몇 초) | 라이선스 | 우리가 가져올 것 (리듬 · 전환 · 구성) | 우리 박자 | 이미지 |
|---|---|---|---|---|---|
| [Remotion · Apple-style device rise](https://www.remotion.dev/prompts/apple-style-device-rise-animation) | 폰 목업이 화면 아래에서 솟아오름. 아래 가운데를 기준점으로 기울기(rotateX)가 줄고 크기가 커지며 감속. 상승 약 1.5초, 전체 4초. 자리 잡은 뒤 알림 카드가 위에서 차례로 내려옴 | 표기 없음 | 구성: 폰 상승 → 카드 차례로 내려오기. 이미 `phone-rise.html`의 출처라 새로 가져올 것 없음 | 제품 | 링크만 |
| [skillry · techtactician-144474](https://skillry.dev/ai-videos/opus-5-5?category=motion&page=6&video=techtactician-144474) | SaaS 제품 런칭 모션 그래픽 (SVG · GSAP · CSS), 60초. 페이지에 장면 설명 없음 | 표기 없음 (영상 이용 조건 없음) | 글로 확인되는 것이 없어 가져올 것 없음. "런칭 클립" 분위기 참고만 | — | 링크만 |
| [snapcn · Check Cycle](https://snapcn.dev/docs/text/check-cycle) | 고정 문장 + 체크박스 옆 단어 하나가 슬롯에서 위로 굴러 바뀌기를 반복. 한 번 0.5초, 약 0.67초 간격. 마지막 단어 뒤 줄 전체가 작아져 머묾. 전체 4.5초 | MIT | 리듬: 같은 자리 단어 바꾸기를 일정 간격으로 여러 번 → 마지막에 줄 전체 정리. `word-swap.html` + `stagger`로 | 훅 | `snapcn-check-cycle.png` |
| [snapcn · Word Wheel](https://snapcn.dev/docs/text/word-wheel) | 고정 앞말 옆에서 단어 기둥이 슬롯머신처럼 돌다가 한 단어에서 멈춤. 위아래 단어는 작고 흐리게. 감속 약 1.75초, 전체 2.2초 | MIT | 구성: 고정 앞말 + 바뀌는 한 단어 + 위아래 흐린 후보. 리듬: 빠르게 돌다 감속해 한 단어에 안착 (`entrance`, 넘침 없이) | 훅 · 마무리 | `snapcn-word-wheel.png` |
| [snapcn · Word Flip](https://snapcn.dev/docs/text/word-flip) | 문장이 한 글자씩 타이핑된 뒤, 가운데 단어가 기준선을 축으로 90° 넘어가며(rotateX) 다음 단어로 바뀜. 약 1.2초마다, 흐림 동반, 슬롯 폭 고정. 전체 6초 | MIT | 리듬: 타이핑 → 잠깐 머묾 → 한 단어 반복 교체. `typing.html` → `word-swap.html`, 슬롯 폭 고정. 나가는 단어가 "살짝 내려갔다 올라가는" 부분은 오버슈트라 빼고 | 훅 | `snapcn-word-flip.png` |
| [snapcn · Phone Frame](https://snapcn.dev/docs/screens/phone-frame) | 폰 프레임 등장 3종(올라오며 나타남 · 기울며 들어옴 · 제자리 커짐) + 정면 · 고정 기울기 · 크레인(아래 왼쪽에서 올라가며 줌 후 정면). 등장 뒤 위아래로 천천히 떠 있음. 전체 8초 | MIT | 전환 · 카메라: 크레인처럼 아래에서 올라가며 다가가 정면으로 끝나기 (4-6 밀고 들어가기 하나로). 등장은 "올라오며 나타남"만 (기울며 들어옴은 rotateZ라 제외) | 제품 | `snapcn-phone-frame.png` |
| [Magic UI · Scroll Based Velocity](https://magicui.design/docs/components/scroll-based-velocity) | 글자 · 이미지 줄이 가로로 끝없이 흐름. 두 줄이 서로 반대 방향, 스크롤 속도에 따라 빨라짐. 초 표기 없음 | 표기 없음 (페이지에 라이선스 문구 없음, GitHub 링크만) | 구성: 두 줄이 반대 방향으로 흐르는 물량 벽. `wall.html` 한 방향 흐름을 두 줄 반대 방향으로 쓰는 안 (스크롤 반응은 영상에 없음) | 제품 · 숫자 | 링크만 |
| [prompt-motion · twoclipping](https://prompt-motion.com/twoclipping-5cba86) | 도형 하나가 버튼 → 로더 → 체크 → 플레이어 → 슬라이더 → 토글 → 탭 → 차트 → 명령창 → 토스트로 모양을 바꾸고 다시 버튼으로. 박자마다 한 번, 약 14초(추정) | 표기 없음 ("영상 · 프롬프트는 만든 사람 소유") | 리듬: 박자마다 한 번 바뀌기 (`stagger` 간격 고정). 전환: 앞 요소가 다음 요소로 모양을 이어 바꾸기 (`converge.html` 점 수렴에 가까움). UI는 우리 `src/parts`만 | 제품 · 마무리 | 링크만 |
