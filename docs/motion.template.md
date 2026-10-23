# docs/motion.template.md
16:9 · 1920×1080 · 30fps. 측정 기록이 아니라 기준 문서. 모든 시간은 33ms 단위.

## 1. Primitives
- duration 6단계 (잰 값은 가까운 단계로 묶기)
- easing 4종: standard · entrance · exit · flick (넘치지 않는 cubic-bezier)

## 2. Semantic
enter · exit · emphasis · transition · stagger

## 3. Patterns (Semantic 이름으로만 값 적기)
오프닝 글자 장면 · 텍스트 등장 · 카드 순서 등장(skill-card) · 커서 클릭(button-submit) · 배지 강조(badge-approved)
숫자 카운트업(stat-card · tabular-nums · 최종값 폭 고정) · 폰 화면 전환 · 엔드 카드(슬로건 + logo 애니메이션)
옵션: 레퍼런스에만 있는 움직임

## 4. 장면 규칙
장면 종류(글자 · 제품 · 폰 화면 최대 2개) · 길이와 텍스트 최소 유지 · 동시에 움직이는 요소 최대 개수 · 크기(화면 폭 %) · 배경(docs/video.md 2장) · 카메라

## 5. 금지 목록
오버슈트 · 바운스 · 회전 등장 · 글리치 · 레퍼런스의 색 · 폰트 · 16:9 좌표

## 출처
측정 기록 부록은 두지 않는다. 토큰 · 규칙마다 출처만 짧게 적는다 (예: "snapcn 10.0s"). 본문 150줄 안쪽, Pattern 하나당 5줄 안쪽.
