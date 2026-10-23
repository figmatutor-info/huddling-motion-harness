# review — launch-b

## 스냅보드
근거: `_plan/decisions.md` "승인 ① 장면표 2026-10-23". 만든 곳: `out/launch-b/_plan/snapboard/` 안에서만 (정지 상태 HyperFrames 프로젝트, root `data-duration` 14.666667초 = 440f).
`npx hyperframes check`: Lint 0 · Runtime 0 · Layout 0 · Motion 0 · Contrast 18/18 통과 · Craft 경고 1 (`line_unread` — stat-card 안 counts 글자. parts 안 글자는 docs/video.md 1장 예외).
뽑은 방법: `npx hyperframes snapshot --at <초>` (Fonts: 3 loaded 확인) → 1920×1080 PNG를 `sNN.png`로 복사.

| 장면 # | PNG 경로 | 뽑은 프레임 (영상 기준 · 장면 안) | 그 프레임에 다 나온 주인공 |
|---|---|---|---|
| 1 | `out/launch-b/_plan/snapboard/s01.png` | 50f (1.666667초) · 장면 안 50f | 히어로 두 줄 "실무에 바로" / "적용하는 AI", "AI" `video-accent` (강조 끝 43f 뒤 머무름 중) |
| 2 | `out/launch-b/_plan/snapboard/s02.png` | 122f (4.066667초) · 장면 안 45f | 스킬 카드 3장 (등장 끝 43f 뒤) + 헤드라인 "바로 써먹는 스킬" |
| 3 | `out/launch-b/_plan/snapboard/s03.png` | 187f (6.233333초) · 장면 안 57f | 폰 03-mission (솟아오름 0–58f의 마지막 프레임, 기울기 tiltTo 8°) + "이번 달 미션" |
| 4 | `out/launch-b/_plan/snapboard/s04.png` | 228f (7.6초) · 장면 안 40f | 제출하기 버튼 (등장 · 눌림 끝, 링 사라진 뒤) + "결과물 제출" |
| 5 | `out/launch-b/_plan/snapboard/s05.png` | 283f (9.433333초) · 장면 안 35f | 헤드라인 "도전부터 미션 완료까지" + 승인 완료 배지 (강조 끝 31f 뒤) |
| 6 | `out/launch-b/_plan/snapboard/s06.png` | 339f (11.3초) · 장면 안 32f | 히어로 "내 자산" + 폰 05-assets + stat-card ₩29,700 (카운트업 끝 31f 뒤) |
| 7 | `out/launch-b/_plan/snapboard/s07.png` | 434f (14.466667초) · 장면 안 70f | 슬로건 "배움이 쌓여, 나의 자산으로" + 로고 (엔드 바탕 `video-end-gradient` 다 찬 뒤) |

### 파일
- Pattern 복사 (원본 그대로, 수정 없음): `compositions/patterns/headline.html` · `bg.html` · `phone-rise.html` · `phone-frame.html` · `end-card.html`
- 장면 정지 요소 (Pattern 아님): `compositions/s02.html` (카드 3장) · `s04.html` (button-submit) · `s05.html` (badge-approved ×3) · `s06.html` (stat-card ×3) · `s07.html` (엔드 바탕)
- src에서 복사: `assets/fonts/Pretendard-{Regular,SemiBold,Bold}.otf` · `assets/screens/03-mission.png` · `05-assets.png`. button-submit · badge-approved · stat-card는 parts HTML 마크업 · 스타일을 장면 파일에 옮겨 배율만 씌움 (원본 수정 없음)
- 2x PNG (scenes.md "각 2x PNG"): src/parts HTML을 렌더 브라우저(chrome-headless-shell)로 deviceScaleFactor 2 스크린샷 → `assets/parts/skill-card-1~3.png` (700×96). `mission-card.png`(700×506) · `badge-approved.png`(216×64)는 `phone-rise.html`이 `parts:"none"`이어도 img 경로를 가지고 있어서 같은 방법으로 넣어 둠 (화면에는 안 보임)

### 스냅보드에서 뺀 것 (생성 단계에서 붙임)
움직임 전부: 상시 드리프트 · #4 밀고 들어가기 · 빛 줄기 · 점 수렴 · 카드 등장 · 버튼 등장 · 눌림 · 눌림 링 · 배지 enter · 강조 · stat-card 등장 · 카운트업 · 로고 빛 맞음 · 엔드 바탕 차오름. 대표 프레임은 이 움직임들이 끝난(또는 아직 시작 전인) 순간이라 정지 요소는 끝 상태로 둠. 카메라 배율은 1로 둠 (드리프트 · 밀고 들어가기 미적용).

### 쓴 색 (hex)
`#18191b` video-bg · color-text / `#ffffff` video-text · color-bg · color-on-primary / `#f7f7f8` video-bg-light / `#3759de` color-primary · video-light / `#91a4ed` video-accent / `#edf1ff` color-primary-subtle / `#247a51` color-success / `#e9eaed` color-border / `#2f3032` video-phone-bezel / 그림자 검정 rgba(0,0,0,·) video-shadow-ui · video-shadow-device. parts PNG 안: `#e3f2fd` color-character-bg · `#75777c` color-text-muted.

### 새 글자 크기
`video-hero` 200px (#1 · #6) · `video-headline` 84px (#2 · #3 · #4 · #5 · #7). parts 안 글자(배지 36px · stat-card 60/42px · 버튼 33.6px · 카드)는 docs/video.md 1장 예외.

### 막힌 것
없음 (만들지 않고 멈춘 것 없음). 아래는 장면표에 숫자가 없어 구현에서 정한 것 — critic 확인용:
1. `assets/noise.png`: `bg.html`이 요구하지만 `src/`에 없음. `video-noise`(흑백 노이즈, docs/video.md 2장)를 구현하려고 256×256 흑백 노이즈를 시드 고정(7)으로 만듦. 불투명도 4%는 `bg.html` 값 그대로. 원본이 따로 있으면 그것으로 바꿔야 함.
2. 배지 · stat-card 그림자: 배율 3 감싸개 안에 걸어서 `video-shadow-ui` 값을 ÷3으로 적음(0 5.333px 16px · 0 0.667px 2px) → 화면에서는 0 16px 48px · 0 2px 6px 그대로.
3. 장면 6 관찰 (값은 장면표 그대로): stat-card ×3(1050×243, left 815)이 폰 프레임(1113.6–1566.4) 위를 덮고 폰 오른쪽 밖(1865)까지 나감. s06.png에서 확인 필요.
4. 장면 2 · 6 밝은 배경에서 노이즈 4%가 눈에 조금 보임 (s02.png). 값은 docs 그대로.

## 스냅보드 · 수정 요청 2 다시 뽑기
근거: `_plan/decisions.md` 수정 요청 2 · 장면표 게이트 "수정 요청 2 · 2회차 · 통과" (`gates.md`). 스냅보드 승인은 아직 없음 → `out/launch-b/_plan/snapboard/` 안에서만 고침.
프로젝트 타이밍을 scenes.md대로 맞춤: root `data-duration` 15초 (450f). 장면 시작 · 길이 s1 0 · 77f / s2 77 · 58f / s3 135 · 58f / s4 193 · 58f / s5 251 · 59f / s6 310 · 66f / s7 376 · 74f (bg `seconds`도 같은 길이로).
`npx hyperframes check`: Lint 0 오류 (경고 1) · Runtime 0 · Layout 0 · Motion 0 · Contrast 23/23 통과 (경고 3) · Craft 경고 1. 경고는 아래 "막힌 것" 관찰 3 · 4.
뽑은 방법: `npx hyperframes snapshot --at 1.666667,4.466667,11.666667` (폰트 로드 확인: SemiBold · Regular 2개 loaded, Bold는 이제 쓰는 곳 없음) → 1920×1080 PNG를 `sNN.png`로 복사.

| 장면 # | PNG 경로 | 뽑은 프레임 (영상 기준 · 장면 안) | 그 프레임에 다 나온 주인공 |
|---|---|---|---|
| 1 | `out/launch-b/_plan/snapboard/s01.png` | 50f (1.666667초) · 장면 안 50f | 헤드라인 한 줄 "실무에 바로 적용하는 AI" `video-headline` 84px, "AI" `video-accent` (강조 끝 43f 뒤 머무름 43–71f 중) |
| 2 | `out/launch-b/_plan/snapboard/s02.png` | 134f (4.466667초) · 장면 안 57f | 튕김 1번 끝나 레일이 멈춘 상태: 가운데 ③ selling ×2.0 (700×148) · 왼쪽 ② review ×1.4 · 오른쪽 ④ private-file ×1.4 (490×103.6) · ① 화면 밖 왼쪽 + 헤드라인 "바로 써먹는 스킬" (top 391) |
| 6 | `out/launch-b/_plan/snapboard/s06.png` | 350f (11.666667초) · 장면 안 40f | 라벨 "이번 달 수익" (top 356) + 숫자 줄 "₩29,700" `video-hero` 200px (카운트업 끝 31f 뒤, 숫자 머무름 31–53f 중) |

장면 3 · 4 · 5 · 7: 내용이 그대로라 PNG를 다시 뽑지 않음 (`s03.png` · `s04.png` · `s05.png` · `s07.png`는 이전 것). 장면 안 프레임은 그대로(57 · 40 · 35 · 70f), 영상 기준 프레임은 시작f가 밀려 지금 타이밍으로 192 · 233 · 286 · 446f에 해당.

모아보기: `out/launch-b/_plan/snapboard/all.png` (1920×2160, 2열 × 4행, 칸 960×540, 장면 1–7 순서, 칸 왼쪽 위에 장면 번호, 8번째 칸은 빈 칸). s01 · s02 · s06을 다시 뽑은 뒤 새로 만듦.

### 장면 6 숫자 줄 폭 (실측, 기준 768px = 화면 폭 40% 이상)
- 숫자 상자(₩ + `data-final` 폭, 레이아웃 기준, 렌더 브라우저에서 getBoundingClientRect): **878.9px = 화면 폭 45.8%** (x 520.5 – 1399.5). 그중 숫자 span 696.3px.
- 잉크 폭 (s06.png 숫자 줄 띠 y 482–725에서 어두운 픽셀 왼쪽 끝 – 오른쪽 끝): **866px = 45.1%** (x 524 – 1389).
- 둘 다 40–60% 안. 장면표 추정 약 800px(42%)보다 약 70–80px 넓음.

### 바꾼 파일
- `index.html`: 장면 1 헤드라인 호스트 2개(히어로 두 줄) → 1개 `{"text":"실무에 바로 적용하는 AI","top":489,"start":0,"firstVisible":true,"accent":"AI","size":"headline","tone":"dark","exit":"fade","exitAt":2.366667}` · 장면 2 헤드라인 top 419 → 391 · 장면 6 폰 프레임 호스트 · 왼쪽 히어로 "내 자산" 뺌, 라벨 호스트 `{"text":"이번 달 수익","top":356,"start":0,"tone":"light","size":"headline"}` (가운데, 감싸개 이동 없음) · 모든 장면 시작 · 길이 · root 15초 · 안 쓰는 `.wrap-right` 뺌.
- `compositions/s02.html`: 스킬 카드 PNG 3장 → asset-card 4장 레일 (끝 상태). 요소 id `s2-slot1~4`(배율 감싸개) · `s2-card1~4`(카드).
- `compositions/s06.html`: stat-card ×3 → 숫자 줄. 요소 id `s6-number-line` · `s6-number-box` · `s6-amount` (`data-final="29,700"`, tabular-nums, 높이 0 `::before`).
- `compositions/s04.html` · `s05.html` · `s07.html`: 맨 위 주석의 프레임 범위만 고침 (내용 그대로).
- src에서 복사: `src/parts/asset-card.html` → `assets/parts/asset-card.html` (원본 그대로) · `src/assets/buddy-front-1.png` · `buddy-front-2.png` → `assets/`. 안 쓰게 된 `assets/parts/skill-card-1~3.png` 지움. `compositions/patterns/phone-frame.html` · `assets/screens/05-assets.png`는 남아 있지만 이제 안 씀.

### 쓴 토큰 (이번에 바뀐 장면)
`video-headline` 84px (#1 · #2 · #6 라벨) · `video-tracking-tight` (헤드라인, headline.html 안) · `video-accent` #91a4ed (#1 "AI") · `video-hero` 200px · 행간 34/28 → 243px (#6 숫자) · `color-text` #18191b (#2 · #6 밝은 배경 글자) · `video-bg-light` (bg.html light) · `video-shadow-ui` (#2 카드마다, 배율 감싸개에 ÷2.0 = 0 8px 24px · 0 1px 3px / ÷1.4 = 0 11.429px 34.286px · 0 1.429px 4.286px → 화면에서 0 16px 48px · 0 2px 6px). 카드 안 색은 asset-card.html 그대로: `color-surface` #f7f7f8 · `color-bg` #ffffff · `color-text-muted` #75777c · `color-primary` #3759de · `color-character-bg` #e3f2fd.

### 막힌 것
없음 (만들지 않고 멈춘 것 없음). critic 확인용 관찰:
1. asset-card 4장을 한 장면에 넣으려고 id 중복을 피해 선택자만 `#asset-card` → `.asset-card`로 바꿈 (값 · 마크업 · 상태별 보이기 규칙은 그대로, 원본 파일은 복사본까지 그대로).
2. #2 밝은 배경(`video-bg-light` #f7f7f8) 위 카드 바탕이 같은 `color-surface` #f7f7f8이라 카드 경계는 `video-shadow-ui` 그림자로만 보임 (scenes.md "카드 그림자" 근거 그대로).
3. check Contrast 경고 3: 카드 안 meta 글자 `color-text-muted` #75777c on `color-surface` #f7f7f8 = 4.19:1 (AA 4.5 미만). parts 안 글자라 docs/video.md 1장 예외, 값은 부품 그대로. Craft 경고 1 (`text_below_floor`: 카드 안 글자, 가장 작은 "파일" 15px = 11px × 1.4) — 같은 예외.
4. Lint 경고 1 (`duplicate_media_discovery_risk`): 카드마다 부품 마크업 전체(상태별 아이콘 img 2개)를 넣어 같은 img가 4번씩 있음. 보이는 것은 상태에 맞는 것 하나. 생성 단계에서 문제가 되면 상태에 안 쓰는 img를 빼는 방법이 있음 (부품 마크업에서 벗어나므로 이번엔 하지 않음).

## 스냅보드 · 수정 요청 4 다시 뽑기
근거: `_plan/decisions.md` 수정 요청 4 · scenes.md "수정 요청 4 반영". 스냅보드 승인은 아직 없음 → `out/launch-b/_plan/snapboard/` 안에서만 고침. 장면 1 · 2만 다시 만듦, 장면 길이 · 시작f 그대로 (450f).
`npx hyperframes lint`: 0 오류 (경고 1 `duplicate_media_discovery_risk`, 이전과 같음). `npx hyperframes check`: 통과 · Layout 0 · Motion 0 · Contrast 경고 3 · Craft 경고 1 (모두 이전 판과 같은 asset-card 안 글자, docs/video.md 1장 parts 예외).
뽑은 방법: `npx hyperframes snapshot --at 1.666667,4.466667` → 1920×1080 PNG를 `sNN.png`로 복사.

| 장면 # | PNG 경로 | 뽑은 프레임 (영상 기준 · 장면 안) | 그 프레임에 다 나온 주인공 |
|---|---|---|---|
| 1 | `out/launch-b/_plan/snapboard/s01.png` | 50f (1.666667초) · 장면 안 50f | 한 줄 "실무에 바로 적용하는 [앱 아이콘]" — 단어 겹쳐 바꾸기 · 줄 자리 잡기 끝(38f) 뒤 아이콘 머무름 38–71f 중. "AI"는 칸 밖 위(끝 상태)라 안 보임 |
| 2 | `out/launch-b/_plan/snapboard/s02.png` | 134f (4.466667초) · 장면 안 57f (지난번과 같은 순간) | 레일 멈춘 상태 (가운데 ③ selling ×2.0 · 왼쪽 ② · 오른쪽 ④ ×1.4) + 헤드라인 "바로 써먹는 스킬", 카드 그림자 `video-shadow-ui-soft` |

장면 3–7: 다시 뽑지 않음 (이전 PNG 그대로).
모아보기: `out/launch-b/_plan/snapboard/all.png` (1920×2160, 2열 × 4행, 칸 960×540, 장면 1–7 순서, 칸 왼쪽 위 장면 번호, 8번째 칸 빈 칸) — s01 · s02를 다시 뽑은 뒤 새로 만듦 (렌더 브라우저로 격자 HTML 스크린샷).

### 장면 1 실측 (렌더 브라우저, Pretendard SemiBold 84px · `video-tracking-tight`, headline.html과 같은 마스크 구조)
- "실무에 바로 적용하는" 줄 폭 674.81 (감싸개 이동 전 x 622.59 – 1297.41) · 단어 사이 간격 18.27 · "AI" 폭 76.63 → "AI"와 아이콘 84 차이 7.37px (1px 이상) → 줄 자리 잡기 있음.
- 칸 left 1315.67 (감싸개 이동 전). 감싸개 translateX: 25f 전 −(18.27 + 76.63) ÷ 2 = −47.45 → 끝 상태 −(18.27 + 84) ÷ 2 = **−51.13** (스냅보드는 끝 상태).
- s01.png 픽셀: 아이콘 검정 상자 x 1265–1347 · y 498–581 (계산 1264.54–1348.54 · 498–582와 맞음) · 흰 글자 잉크 x 575–1244. 한 줄 전체(글자 왼쪽 ~ 아이콘 오른쪽) 약 773px = 화면 폭 약 40% — 장면표 "한 줄 폭 약 970px (약 50%)"는 추정값이라 실측과 다름 (값을 정하는 항목은 아님).
- **아이콘 읽힘 (어두운 배경)**: 흰 심볼 대 검정 상자 21:1로 심볼은 또렷이 읽힘. 검정 상자(#000) 대 주변 배경(약 rgb 29–33) 대비 1.26–1.32:1이라 상자 모서리 · 가장자리는 거의 안 보이고 "흰 심볼만 떠 있는" 모양으로 읽힘 (scenes.md 질문 후보 19 · decisions.md 기본값 "부품 그대로"와 같은 결과).

### 바꾼 파일
- `index.html`: 장면 1 헤드라인 호스트 문구 "실무에 바로 적용하는 AI" → "실무에 바로 적용하는", `accent` "AI" → "" (나머지 변수 그대로) · 호스트와 새 `s01` 호스트를 줄 감싸개 `#s1-line`(translateX −51.13) 하나에 넣음 · 맨 위 주석에 수정 요청 4 한 줄.
- `compositions/s01.html` (새로 만듦): 요소 id `s1-slot` (칸, left 1315.67 · top 489 · 84×102 · overflow hidden) · `s1-ai` ("AI", `video-accent` #91a4ed, 끝 상태 translateY −102 · blur 4px) · `s1-icon-scale` (scale 0.857143, 칸 안 top 9 = 화면 top 498) · `brand-icon` (부품 마크업 · 스타일 그대로, img 경로만 `assets/`).
- `compositions/s02.html`: 카드 그림자 `video-shadow-ui` → `video-shadow-ui-soft`. 배율 감싸개에 걸어 ÷ 배율로 적음: 가운데 ÷2.0 = `0 4px 12px` 12% + `0 0.5px 1.5px` 8% · 옆 ÷1.4 = `0 5.714px 17.143px` 12% + `0 0.714px 2.143px` 8% → 화면 결과 `0 8px 24px` 검정 12% + `0 1px 3px` 검정 8% (토큰 값 그대로). 맨 위 주석도 고침.
- src에서 복사 (원본 그대로): `src/parts/brand-icon.html` → `assets/parts/brand-icon.html` · `src/assets/logo-symbol-white.svg` → `assets/logo-symbol-white.svg`.

### 쓴 토큰 (이번에 바뀐 장면)
`video-headline` 84px · 행간 102 (#1 줄 · "AI") · `video-tracking-tight` (#1) · `video-accent` #91a4ed (#1 "AI") · `color-illustration-000000` #000000 (brand-icon 바탕, 부품 그대로) · `video-shadow-ui-soft` (#2 카드) · `video-bg` · `video-bg-light` (bg.html 그대로).

### 막힌 것
없음 (만들지 않고 멈춘 것 없음). critic 확인용 관찰:
1. #2 그림자 배율: scenes.md:44 문구는 "배율이 걸린 카드 요소에 그림자를 주므로 그림자도 같은 배율로 커짐"(→ 화면 결과 = 토큰 × 2.0 · × 1.4)인데, 이번 지시는 "배율 안에서 그림자를 걸면 화면 결과가 토큰 값이 되게"라 ÷ 배율로 적어 화면 결과 = 토큰 값으로 만듦. 장면표 문구와 화면 결과가 다르니 director가 문구를 맞추거나, 토큰 × 배율이 맞다면 알려 주면 다시 뽑음.
2. #1 줄 폭 장면표 추정(약 970px)과 실측(약 773px) 차이 — 위 실측 참고. 4-4에 이 줄 폭 기준은 없음.
3. 아이콘 상자 가장자리 대비 1.3:1 (위 "아이콘 읽힘"). 테두리 · 그림자 토큰을 더하지 않음 (장면표 "그림자 없음").

## 생성
근거: `_plan/decisions.md` "승인 ① 장면표" · "승인 ② 스냅보드" (2026-10-23). 만든 곳: `out/launch-b/` (HyperFrames 프로젝트, root `data-duration` 15초 = 450f · 30fps · 1920×1080). 렌더는 하지 않음 (생성 게이트 뒤).
스냅보드 프로젝트(`_plan/snapboard/`)를 옮기고 scenes.md의 움직임 · 전환 · 카메라를 붙임. 메인 타임라인은 `document.fonts.ready` 뒤에 만들고 마지막에 등록 (docs/design.md 3장).

### 검사 (`npx hyperframes check --json`, hyperframes 0.8.186)
`ok: true` — Lint 오류 0 · 경고 1 · Runtime 0 · Layout 0 · Motion 0 · Contrast 오류 0 · 경고 3 (23/26 통과) · Craft 오류 0 · 경고 2.
- Lint 경고 `duplicate_media_discovery_risk` (s02.html): asset-card 4장에 부품 마크업 전체(상태별 img)를 넣어 같은 img가 4번 — 스냅보드와 같음.
- Contrast 경고 3: 카드 안 meta 글자 `color-text-muted` #75777c on `color-surface` #f7f7f8 = 4.19:1 — parts 안 글자 (docs/video.md 1장 예외), 스냅보드와 같음.
- Craft 경고 `line_unread`: 카드 ② "리서치 비교표 템플릿"이 가운데 칸에 0.30초 — 레일 튕김(0–58f)으로 옆 칸으로 감. parts 안 글자 (4-2 표 아래 예외). `text_below_floor`: 카드 안 글자 15px 등 — 같은 예외.
- 그 밖 직접 센 것: 금지 효과 grep (`rotateZ|rotate\(|elastic|bounce|back\.|spring|glitch`) 0건 (index.html · compositions/*). 곡선은 bezier 4종만: entrance (0.15, 0.85, 0.55, 0.95) · exit (0.45, 0.05, 0.85, 0.15) · standard (0.55, 0, 0.1, 0.95) · flick (0.2, 0.425, 0, 0.997), y 모두 0–1 안. Pattern 4파일 `diff src/patterns/<f>` 차이 0 (headline · bg · phone-rise · end-card).
- 스냅샷 확인 (`npx hyperframes snapshot`, 0 · 20 · 29 · 50 · 72 · 74 · 75 · 76 · 77 · 78 · 80 · 81 · 110 · 134 · 160 · 192 · 212 · 226 · 244 · 250 · 251 · 262 · 275 · 300 · 306 · 307 · 309 · 310 · 312 · 320 · 335 · 360 · 370 · 375 · 376 · 380 · 420 · 425 · 432 · 449f): 컷 프레임 76/77 · 250/251 · 309/310 · 375/376에서 앞 장면 글자와 다음 장면 글자가 같은 프레임에 없음 (250f · 375f는 수렴 막바지라 묶음이 점에 가까움, 251f · 376f는 다음 장면 글자가 마스크 아래).

### 파일
- `index.html` (메인): 장면 호스트 · 감싸개 · 메인 타임라인 (드리프트 · #1 줄 자리 잡기 · #4 밀고 들어가기 · 점 수렴 2개)
- Pattern 복사 (src/patterns 원본 그대로, 수정 없음): `compositions/patterns/headline.html` · `bg.html` · `phone-rise.html` · `end-card.html`. (스냅보드의 `phone-frame.html`은 쓰지 않아 옮기지 않음)
- 장면 파일: `compositions/s01.html` · `s02.html` · `s04.html` · `s05.html` · `s06.html` · `s07.html` · `s07-ring.html` · `streak.html`
- src에서 복사 (원본 그대로, cmp 같음): `assets/fonts/Pretendard-Regular.otf` · `Pretendard-SemiBold.otf` · `assets/screens/03-mission.png` · `assets/parts/asset-card.html` · `assets/parts/brand-icon.html` · `assets/logo-symbol-white.svg` · `assets/buddy-front-1.png` · `buddy-front-2.png`. 스냅보드에서 옮김: `assets/noise.png` (스냅보드 때 만든 것 그대로) · `assets/parts/mission-card.png` · `badge-approved.png` (phone-rise.html img 경로용, `parts:"none"`이라 안 보임). Bold 폰트 · 05-assets.png는 쓰는 곳이 없어 옮기지 않음.

### 장면표 줄 → 파일 · 요소 id
| # | 장면표 줄 | 파일 · 요소 id |
|---|---|---|
| 모두 | 상시 드리프트 1 → 1.04 · none · 중심 960 540 (`drift.html`) | index.html `#s1-cam` · `#s2-cam` · `#s3-cam` · `#s4-cam-bg` + `#s4-cam` · `#s5-cam` · `#s6-cam-bg` + `#s6-cam` · `#s7-cam` (장면 시작 ~ 끝, 메인 타임라인) |
| 모두 | 영상 공통 배경 · `video-light-pos` ①②③④⑤⑥① · `seconds` = 장면 길이 | index.html `#s1-bg` … `#s7-bg` (`bg.html`) |
| 1 | 오프닝 글자 "실무에 바로 적용하는" firstVisible · exitAt 2.366667 | index.html `#s1-headline` (`headline.html`) in 줄 감싸개 `#s1-line` |
| 1 | "AI" 칸 · 마스크 상승 12–25f (`video-accent`, blur-in) | s01.html `#s1-slot` · `#s1-ai` |
| 1 | 단어 겹쳐 바꾸기: "AI" exit 25–31f · 아이콘 enter 25–38f | s01.html `#s1-ai` · `#s1-icon-move` > `#s1-icon-scale` (×0.857143) > `#brand-icon` |
| 1 | 줄 다시 자리 잡기 25–38f (−47.45 → −51.13, enter) | index.html `#s1-line` (메인 타임라인) |
| 1 | 아이콘 칸 퇴장 71–77f (blur-out + 투명) | s01.html `#s1-slot` |
| 1 → 2 | 빛 줄기 71–84f (컷 77f) | index.html `#s12-streak` (streak.html `#streak-band`) |
| 2 | 텍스트 등장 "바로 써먹는 스킬" top 391 light | index.html `#s2-headline` |
| 2 | 카드 레일 B 튕김 0–58f flick · 배율 가운데 ×2.0 / 옆 ×1.4 · 그림자 `video-shadow-ui-soft` | s02.html `#s2-slot1`–`#s2-slot4` (진행값 하나 `rail.p`) · 카드 `#s2-card1`–`#s2-card4` |
| 3 | 폰 솟아오르기 phoneX 1340 · parts none | index.html `#s3-rise` (`phone-rise.html`) |
| 3 | 텍스트 등장 "이번 달 미션" (왼쪽 −500) | index.html `#s3-headline` (`.wrap-left`) |
| 4 | 텍스트 등장 "결과물 제출" (왼쪽 −500) | index.html `#s4-headline` |
| 4 | 버튼 등장 0–13f (아래 16 → 0) | s04.html `#s4-btn-enter` |
| 4 | 버튼 눌림 19–37f 1 → 0.96 → 1 | s04.html `#s4-btn-press` (기준 1340 540) > `#s4-button-scale` (×2.4) > `#button-submit` |
| 4 | 눌림 링 19–37f 지름 105.6 → 316.8 | s04.html `#s4-ring` |
| 4 | 밀고 들어가기 0–58f 1 → 1.16 standard · 중심 (1340, 540) | index.html `#s4-push-bg` · `#s4-push` |
| 4 → 5 | 점 수렴 238–251f · 수렴점 (960, 611) | index.html `#s4-conv` |
| 5 | 텍스트 등장 "도전부터 미션 완료까지" top 421 · exitAt 1.766667 | index.html `#s5-headline` |
| 5 | 배지 enter 0–13f · 크기 1 → 1.04 → 1 13–31f · 퇴장 53–59f | s05.html `#s5-badge-enter` · `#s5-badge-pulse` (기준 960 611) · `#s5-badge-exit` · `#s5-badge-scale` (×3) > `#badge-approved` |
| 5 → 6 | 빛 줄기 304–317f (컷 310f) | index.html `#s56-streak` |
| 6 | 라벨 "이번 달 수익" top 356 light | index.html `#s6-headline` |
| 6 | 숫자 줄 등장 0–13f (아래 40 → 0, "₩0") · 카운트업 13–31f | s06.html `#s6-number-line` · `#s6-number-box` · `#s6-amount` (`data-final="29,700"`) |
| 6 → 7 | 점 수렴 363–376f · 수렴점 (960, 454) | index.html `#s6-conv` |
| 7 | 엔드 카드 슬로건 · 로고 | index.html `#s7-end` (`end-card.html`) |
| 7 | 로고 빛 맞음 44–62f (빛 번짐 아래 층 · 링 위 층) | s07.html `#s7-glow` · s07-ring.html `#s7-ring` (호스트 `#s7-ring-host`) |
| 7 | 엔드 바탕 바꾸기 50–63f | s07.html `#s7-end-gradient` |

### 쓴 토큰
- 시간: `dur-s` 6f (`exit` · `stagger` · 겹침) · `dur-m` 13f (`enter` · `transition`) · `dur-l` 18f (`emphasis`) · `dur-2xl` 58f (레일 튕김 · 폰 솟아오름 · 밀고 들어가기 = 장면 길이) · `dur-xl` 28f (머무름, 장면표 시점 그대로)
- 곡선: `entrance` · `exit` · `standard` · `flick` · 드리프트 · 배경 빛 `none`
- 흐림: `blur-in` 4px → 0 (#1 "AI" · 아이콘, 헤드라인) · `blur-out` 0 → 4px (#1 "AI" exit · 칸 퇴장, 헤드라인 퇴장). 전환(빛 줄기 · 점 수렴)에는 흐림 없음
- 색 · 룩: `video-bg` #18191b · `video-bg-light` · `video-text` · `video-accent` #91a4ed (#1 "AI" · 눌림 링 · 로고 링) · `color-text` #18191b (#6 숫자) · `video-light` #3759de (`video-streak` 40% · `video-logo-glow` 22%) · `video-end-gradient` (#3759de → #18191b) · `video-shadow-ui-soft` (#2) · `video-shadow-ui` (#5 배지) · `video-shadow-device` (phone-rise 안) · `video-logo-ring` (선 2px · 지름 → 3배 · 60% → 0%) · `color-illustration-000000` (brand-icon) · 부품 안 색은 부품 그대로 (`color-primary` · `color-on-primary` · `color-primary-subtle` · `color-success` · `color-surface` · `color-bg` · `color-text-muted` · `color-character-bg`)
- 글자: `video-headline` 84px · 행간 102 · `video-tracking-tight` · `video-hero` 200px · 행간 243 (#6 숫자)

### 구현에서 정한 것 (장면표에 숫자가 없어 식 · 실측으로 채운 값 — critic 확인용)
1. "1 → 0.96 → 1" · "1 → 1.04 → 1"을 `emphasis` 곡선 하나로: 진행값 p(0 → 1, entrance, 18f) 하나에서 크기 = 1 ∓ 0.04 × sin(πp). 1을 넘지 않음(눌림) · 1.04를 넘지 않음(배지). 로고 빛 번짐 "번졌다 사라짐"도 같은 방식으로 불투명도 = sin(πp) (0 → 1 → 0, 빛 색 자체가 22%).
2. #2 그림자: 배율이 프레임마다 바뀌므로 매 프레임 `video-shadow-ui-soft` ÷ 그때 배율로 적음 → 화면 결과 항상 `0 8px 24px` 검정 12% + `0 1px 3px` 검정 8% (decisions.md "(스냅보드 승인)"). scenes.md:44 문구("그림자도 같은 배율로 커짐")는 아직 바뀌지 않았으나 decisions.md를 따름.
3. #2 카드 배율: 칸 위치에 묶은 식 = 2.0 + (1.4 − 2.0) × min(1, |가운데 x − 960| ÷ 619). 위치가 flick이므로 배율도 같은 곡선.
4. 빛 줄기: 기울기 30° = `skewX(−30°)` (세로 변이 30° 기울어짐, 회전 아님), 이동 x −800 → 2240 (화면 밖 왼쪽 → 화면 밖 오른쪽의 최소 거리, 높이 1080 × tan30° ÷ 2 = 311.8 퍼짐 포함). screen 합성은 호스트(`#s12-streak` · `#s56-streak`)에 `mix-blend-mode: screen`.
5. #7 로고 아이콘 크기 · 가운데: end-card.html `#ec-icon` 렌더 실측 (chrome-headless-shell, getBoundingClientRect) x 630.59–694.64 · y 605.85–672.07 → 아이콘 높이 66.21, 가운데 (662.62, 638.96). 링 · 빛 지름 66.21 → 198.64.
6. 엔드 바탕 "아래부터 차오름": 그라데이션 층을 늘이지 않고 `clip-path: inset(100% 0 0 0)` → `inset(0)`으로 아래부터 드러냄 (standard 13f).
7. 점 수렴은 화면 좌표의 수렴점이 그대로 되도록 감싸개 맨 바깥(드리프트 · 밀고 들어가기보다 바깥)에 둠. 배경은 묶음에 넣지 않아 같은 드리프트 · 밀고 들어가기 값을 따로 받음 (`#s4-cam-bg` · `#s4-push-bg` · `#s6-cam-bg`). #4 밀고 들어가기는 배경 감싸개에도 같이 걸었음 (카메라).
8. #1 줄 자리 잡기 값(−47.45 → −51.13)과 칸 left 1315.67은 스냅보드 때 렌더 브라우저 실측값을 그대로 씀 (다시 재지 않음).

### 막힌 것
없음 (만들지 않고 멈춘 것 없음). critic · 사람이 볼 관찰:
1. 빛 줄기 → 밝은 장면: 컷(77f · 310f) 뒤 반(다음 장면이 밝은 배경 #2 · #6)에서는 `video-streak`(#3759de 40%)을 screen으로 얹으면 #f7f7f8 위에서 거의 안 보임 (스냅샷 77 · 78 · 310 · 312f). 앞 반(71–76f · 304–309f, 어두운 배경)에서는 보임. 값은 docs 그대로.
2. 빛 줄기는 standard 곡선 때문에 13f 중 화면 안에 보이는 프레임이 짧음 (light-streak.html 주의와 같음): 74f에는 왼쪽 위 끝에만, 75–76f에 화면 가운데를 지남.
3. scenes.md:44 #2 그림자 문구와 decisions.md "(스냅보드 승인)"가 아직 다름 (위 2번). director 문구 정리 거리.

## 렌더
- 근거: decisions.md "생성 · 렌더 진행 (사람 지시)" — 생성 게이트 판정을 기다리지 않고 렌더. 프로젝트는 고치지 않음 (생성 상태 그대로)
- 명령: `npx hyperframes render . --quality delivery --fps 30 --output render/launch-b.mp4` (hyperframes v0.8.186, screenshot capture, 30.8s)
- 파일: `out/launch-b/render/launch-b.mp4` (20,990,959 B)
- ffprobe: h264 · yuv420p · 1920×1080 · r_frame_rate 30/1 (avg 30/1) · 길이 15.000000s · 프레임 450 (count_frames) — 루트 data-duration 15 · 450f와 같음
- 폰트: index.html이 `document.fonts.ready.then(...)` 뒤에 타임라인 등록 (Pretendard 400 · 600, assets/fonts). 디코드 60f에서 헤드라인이 Pretendard로 그려진 것 눈으로 확인
- 막힌 것: 없음
