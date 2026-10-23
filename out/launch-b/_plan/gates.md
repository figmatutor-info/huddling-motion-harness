# gates — launch-b

## 브리프 · 1회차 · 통과
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 템플릿 칸 모두 채움 | 빈 칸 0 (영상이름 · 길이 14 · 영상 종류 런칭 영상 · 분위기 · 핵심 메시지 · 장면 7줄 · 형식 · 레퍼런스) | 0 | 통과 | brief/BRIEF.md:2-3, 8-14, 16 |
| 새 칸 | 0 | 0 | 통과 | brief/BRIEF.md 전체 (BRIEF.template.md와 같은 구조) |
| 분위기 = 브리프 답 | "빠르고 경쾌한" = "빠르고 경쾌한" | 같음 | 통과 | BRIEF.md:2 · decisions.md:4 |
| 핵심 메시지 = 브리프 답 | 같음 | 같음 | 통과 | BRIEF.md:3 · decisions.md:5 |
| 엔드 카드 문구 = 브리프 답 | "배움이 쌓여, 나의 자산으로" 같음 | 같음 | 통과 | BRIEF.md:14 · decisions.md:6 |
| 적힌 파일에 없는 문구 | 0 / 13 | 0 | 통과 | #1 "일에 바로 적용하는 AI" 02-skills.png 확인 · #2 "바로 써먹는 스킬" 01-home.png 확인, skill-card-1/2/3.html 문구 각 파일에 있음 · #3 "이번 달 미션" 03-mission.png 확인, "반복 업무를 줄이는 AI 자동화" mission-card.html:111 · #4 "결과물 제출" 03-mission.png 확인, "제출하기" button-submit.html:59 · #5 "승인 완료" 04-approved.png 확인, badge-approved.html · #6 "내 자산" 05-assets.png 확인, "이번 달 수익 ₩29,700" stat-card.html:46 · #7 엔드 카드 문구는 05-assets.png에도 있음 |
| (참고) Pattern 이름이 motion.md 3장 표에 있음 | 7/7 | 전부 | 통과 | 오프닝 글자 · 카드 순서 등장 · 폰 솟아오르기 · 버튼 눌림 · 눌림 링 · 배지 강조 · 숫자 카운트업 · 엔드 카드 |
| 공통: motion.md 밖 값 | 0 (시간 · 곡선 · 흐림 · 색 · 폰트 값 없음, 형식 1920×1080 · 14초만) | 0 | 통과 | BRIEF.md:16 |
| 공통: 금지 효과 | 0 | 0 | 통과 | BRIEF.md 전체 |
| 공통: 화면에 없는 UI | 0 (적힌 screens 5개 · parts 7개 모두 src/에 있음) | 0 | 통과 | src/screens · src/parts |
| 공통: 질문 수 | 0 | 3 이하 | 통과 | decisions.md:12-13 |
| 레퍼런스 · 장면표 · 스냅보드 · 생성 · 렌더 조건 | — | — | 해당 없음 | references.md · scenes.md 아직 없음 |

참고 (결과에 넣지 않음): 장면 2 · 6의 종류 표기("제품" · "폰 화면")와 장면 3 · 4가 같은 03-mission.png를 쓰는 점은 장면표 게이트(4-1 폰 화면 장면 2개 이하 · 같은 종류 연속 · 4-5 같은 배경 연속)에서 다시 센다. 현재 폰 화면 장면 2개(#3 · #6), 글자 장면 첫 · 끝만.

## 브리프 · 2회차 · 통과
(수정 요청 1 반영본 다시 보기. 1회차 통과 뒤 사람 수정 요청으로 다시 본 것이라 탈락 횟수와 관계없음)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 템플릿 칸 모두 채움 | 빈 칸 0 (영상이름 · 길이 14 · 영상 종류 · 분위기 · 핵심 메시지 · 장면 7줄의 종류 · 문구 · 파일 · 강조 · Pattern · 형식 · 레퍼런스) | 0 | 통과 | brief/BRIEF.md:2-3, 8-14, 16 |
| 새 칸 | 0 | 0 | 통과 | BRIEF.md 전체 (BRIEF.template.md와 같은 구조. #5 "보조 헤드라인 크기"는 기존 줄 안의 메모, 참고 1) |
| 분위기 = 브리프 답 | "빠르고 경쾌한" 같음 | 같음 | 통과 | BRIEF.md:2 · decisions.md:4 |
| 핵심 메시지 = 브리프 답 | "AI 스킬을 미션으로 배우고, 결과물이 내 자산이 된다" 같음 | 같음 | 통과 | BRIEF.md:3 · decisions.md:5 |
| 엔드 카드 문구 = 브리프 답 | "배움이 쌓여, 나의 자산으로" 같음 | 같음 | 통과 | BRIEF.md:14 · decisions.md:6 |
| 오프닝 문구 · 강조 단어 = 브리프 답 (사람이 정한 문구) | "실무에 바로 적용하는 AI" · 강조 AI 같음 | 같음 | 통과 | BRIEF.md:8 (#1) · decisions.md:7 |
| 완료 장면 문구 = 브리프 답 (사람이 정한 문구) | "도전부터 미션 완료까지" 같음 | 같음 | 통과 | BRIEF.md:12 (#5) · decisions.md:8 |
| 그 밖의 문구 중 적힌 파일에 없는 문구 | 0 / 10 | 0 | 통과 | #2 "바로 써먹는 스킬" 01-home.png 눈으로 확인 · "회의록을 실행 목록으로" skill-card-1.html:52 · "자료를 비교표로 정리하기" skill-card-2.html:52 · "반복 메일, 자동으로 답장하기" skill-card-3.html:52 · #3 "이번 달 미션" 03-mission.png 확인 · "반복 업무를 줄이는 AI 자동화" mission-card.html:111(줄바꿈 `<br>` 포함) · #4 "결과물 제출" 03-mission.png 확인 · "제출하기" button-submit.html:59 · #6 "내 자산" 05-assets.png 확인 · "이번 달 수익 ₩29,700" stat-card.html:46 (05-assets.png에도 있음) |
| (참고) Pattern 이름이 motion.md 3장 표에 있음 | 8/8 | 전부 | 통과 | 오프닝 글자 motion.md:56 · 카드 순서 등장 :64 · 버튼 눌림 :66 · 눌림 링 :67 · 배지 강조 :69 · 숫자 카운트업 :70 · 폰 솟아오르기 :74 · 엔드 카드 :78 |
| 공통: motion.md 밖 값 | 0 (색 `video-accent` = video.md:62 · 크기 "보조 헤드라인" = video.md:70 `video-headline` · 형식 1920×1080 · 14초) | 0 | 통과 | BRIEF.md:8, 12, 16 |
| 공통: 금지 효과 | 0 | 0 | 통과 | BRIEF.md 전체 |
| 공통: 화면에 없는 UI | 0 (적힌 screens 5개 · parts 7개 모두 src/에 있음) | 0 | 통과 | src/screens · src/parts |
| 공통: 질문 수 | 0 | 3 이하 | 통과 | decisions.md:15-16 (수정 요청 1은 질문 아님) |
| 레퍼런스 · 장면표 · 스냅보드 · 생성 · 렌더 조건 | — | — | 해당 없음 | 아직 없음 |

참고 (결과에 넣지 않음):
1. #5 "보조 헤드라인 크기"는 수정 요청 1 ②를 옮긴 메모. 장면표 · 스냅보드 게이트에서 실제 크기가 video.md:70 범위 72–88px인지 센다.
2. #5가 히어로가 아니게 되어 히어로 글자 후보는 #1 · #7(엔드 카드). 장면표 게이트의 "히어로 글자 2회 이상"(video.md:64)에서 다시 센다.
3. 사람이 정한 두 문구는 화면에 그대로 있지 않음(02-skills.png · 04-approved.png는 "관련 화면"). 브리프 답과 같은 지위로 보고 탈락 아님.

## 레퍼런스 · 1회차 · 통과
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| docs 경로가 없는 "가져올 것" | 0 / 13 | 0 | 통과 | references.md:10-22 |
| 연결한 docs 경로 · 토큰 · Pattern이 원본에 실제로 있음 | 13 / 13 행 모두 있음. 토큰: video-bg · video-dots · video-light · video-light-pos · video-noise · video-light-drift · video-bg-light · video-end-gradient (video.md:32-53) · video-text · video-accent · video-headline · video-hero · video-tracking-tight · video-logo-height (video.md:60-67) · video-streak (video.md:38) · video-logo-ring · video-shadow-ui (video.md:92-93) · enter · exit · emphasis · transition · stagger · entrance · standard · flick · blur-in (motion.md:12-45). Pattern 12종 모두 motion.md:56-81 표와 src/patterns/에 있음 (headline · card-stack · count-up · button-press · press-ring · converge · light-streak · drift · badge-pulse · end-card · logo-hit · end-shift · bg). 장 번호 4-1 · 4-2 · 4-3 · 4-4 · 4-5 · 4-6 · 4-7 · 1장 Blur "전환: 없음" · video.md 맨 위 톤 문단 · 2 · 3 · 5장 모두 있음 | 전부 | 통과 | references.md:10-22 · motion.md:7-146 · video.md:3-97 |
| 새로 적은 숫자 (hex · px · ms · 베지어 · 각도) | 0 (숫자는 행 번호 · 장면 번호 · 장 번호 · "1→2→3"(motion.md:64 문구) · "상한 2"(decisions.md:14)뿐) | 0 | 통과 | references.md 전체 grep |
| 공통: motion.md 밖 값 | 0 | 0 | 통과 | references.md 전체 |
| 공통: 금지 효과 | 0 (rotateZ 기울며 들어옴 · 오버슈트 "살짝 내려갔다 올라가는" 둘 다 "가져오지 않을 것"으로 뺌) | 0 | 통과 | references.md:30-31 |
| 공통: 화면에 없는 UI | 0 (언급한 제출하기 버튼 · 승인 배지 · 로고 = button-submit.html · badge-approved.html · logo.html, src/parts/에 있음. 새 UI · 새 문구 없음) | 0 | 통과 | references.md:17-18, 22 |
| 공통: 질문 수 | decisions.md 질문 0 (references.md 질문 후보 1개를 더해도 1) | 3 이하 | 통과 | decisions.md:16-17 · references.md:47 |

폰 화면 구성 (장면표 게이트용): "가져올 것"에 폰 화면 구성 항목 **0개** (폰 이어지는 이동 · phone-rise · phone-push · 폰 프레임 카메라 모두 "가져오지 않을 것" 6에 있음, references.md:32). 행 7 숫자 카운트업은 stat-card.html 부품 대상이라 폰 화면 구성 아님 (src/patterns/count-up.html:4). → 이 영상의 폰 화면 장면 상한 **2** (motion.md:96). decisions.md:14 ④ "폰 화면 상한 기본 2 그대로"와 같음.

참고 (결과에 넣지 않음):
1. 행 10 "줌 통과는 제품 → 숫자 흐름에 한 번": motion.md:140은 "제품 장면 → 숫자 장면". 브리프에서 숫자가 나오는 장면 6은 폰 화면 장면이라, 장면표 게이트에서 줌 통과를 어디에 쓰는지 다시 본다.
2. 행 8 "밀고 들어가기"는 motion.md:139의 대상(제품 클로즈업 · 버튼이 주인공인 폰 장면). 장면 4는 제품 장면이므로 장면표에서 버튼 클로즈업인지 확인.
3. references.md:5 · 40의 "장면마다 UI 인터랙션 하나"는 메모(references/README.md:20)에만 있어 게이트 조건 아님 — art-director 판단과 같음.
4. 질문 후보 1(폰 떠 있는 움직임)은 decisions.md에 아직 올라가지 않음. 올라가면 질문 수 1.

## 장면표 · 1회차 · 탈락
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 길이 | 440f (14.67초) | 360–450f | 통과 | scenes.md 길이 줄 · 장면 7 끝 440f |
| 글자 장면 첫 · 끝만 | 글자 장면 #1 · #7 | 오프닝 · 엔드만 | 통과 | motion.md:90 |
| 폰 화면 장면 수 | 2 (#3 03-mission · #6 05-assets) | 2 이하 (references.md 가져올 것에 폰 화면 구성 0 → motion.md:96 기본 2, gates.md 레퍼런스 1회차) | 통과 | motion.md:92, 96 · decisions.md:14 ④ |
| 같은 종류 연속 | 최대 1 (글자 · 제품 · 폰 · 제품 · 강조 · 폰 · 글자. 강조를 제품으로 세도 #4 · #5 = 2) | 2 이하 | 통과 | motion.md:97 |
| 같은 배경 연속 | 최대 2 (어두운 · 밝은 · 밝은 · 어두운 · 어두운 · 밝은 · 엔드) | 3 이하 | 통과 | motion.md:132 |
| 히어로 글자 | 2회 (#1 두 줄 `size:"hero"` · #6 "내 자산" `size:"hero"`) | 2회 이상 | 통과 | motion.md:121 · video.md:64 |
| 동시에 움직이는 요소 | 최대 4 (#3 12f 폰 + 단어 3 · #5 12f 배지 + 단어 3 · #6 6f 빛 줄기 + 단어 2 + stat-card). 다시 셈: #1 3 · #2 3 (6f 빛 줄기·단어 2 / 18f 단어 2·카드 1 / 24f 단어 1·카드 2 / 30f 카드 3) · #4 3 · #7 3 | 4 이하 | 통과 | motion.md:114-116 |
| Pattern이 3장 표에 있음 | 14 / 15 파일. 표에 없는 것 1: `phone-frame.html` (#6 Pattern 칸). 있는 것: headline :56-57 · card-stack :64 · button-press :66 · press-ring :67 · badge-pulse :69 · count-up :70 · phone-rise :74 · drift :75 · light-streak :76 · converge :77 · end-card :78 · logo-hit :79 · end-shift :80 · bg :81 | 15 / 15 | **탈락** | scenes.md 장면 6 Pattern 칸 · 질문 후보 6 (스스로 "3장 Pattern 표에는 없는" 이라 적음) · motion.md:54-81 |
| 머무름 4-2 | 어긋남 0. #1 문장 43–71f = 28 (`dur-xl`) · #2 25–53 = 28 · #3 25–53 = 28 · #4 19–47 = 28 · #5 25–53 = 28 · #6 "내 자산" 19–32 = 13 (`dur-m`, 한두 단어) · 숫자 31–44 = 13 · #7 슬로건 31–76 = 45 (≥ 28), 마지막 움직임 뒤 63–76 = 13 | 문장 `dur-xl` · 한두 단어 · 숫자 `dur-m` | 통과 | motion.md:106-107 |
| 앞뒤 장면 글자 같은 프레임 | 0 (#1→#2 exit 71–77 끝 = 컷 77 · #4→#5 수렴 배율 0 = 248 · #5→#6 exit 53–59 끝 = 컷 307 · #6→#7 수렴 끝 364 · 나머지 컷) | 0 | 통과 | motion.md:146 |
| 계획상 움직이는 프레임 | 344 / 440 = 78.2% (내역 49 · 43 · 58 · 50 · 37 · 44 · 63, 합 다시 셈 344 맞음) | 35% 이상 | 통과 | scenes.md 움직이는 프레임 내역 줄 |
| 공통: motion.md 밖 값 | 0. 시간 전부 토큰(4 · 6 · 13 · 18 · 28 · 58f)과 그 합의 시작점 · 곡선 `entrance` · `standard` · `none` · 흐림 `blur-in/out` · 색 · 그림자 토큰만. "장면에서 정한 값" 숫자 21줄 하나씩: 위치(top 297 · 540 · 419 · 489 · 421 · phoneX 1340 · translateX −500 · +380 · 카드 left · 버튼 left/top · 배지 left/top · stat-card left/top · 수렴점 960 611 / 960 454) · 크기 배율(카드 ×0.8 · 버튼 ×2.4 · 배지 ×3 · stat-card ×3) · 이동 거리(카드 40 · 버튼 16 · stat-card 60)는 motion.md:5 "장면마다 정한다" 종류. start 0.2 · exitAt 2.366667 · 1.766667 · phoneX · screen · parts는 headline.html · phone-rise.html 주석 변수. 링 지름 105.6 → 316.8 = press-ring.html 값 · 밀고 들어가기 1 → 1.16 = motion.md:139 · 드리프트 1 → 1.04 = drift.html | 0 | 통과 | scenes.md "장면에서 정한 값" 표 |
| 공통: 금지 효과 | 0 (눌림 1→0.96→1 · 배지 1→1.04→1 `entrance` 곡선 하나 · #3 기울기 rotateX 35→8 · rotateZ · 글리치 · 레퍼런스 색/폰트/좌표 없음) | 0 | 통과 | motion.md:150-153 |
| 공통: 화면에 없는 UI | 0. 파일 7개 모두 있음 (01-home · 03-mission · 05-assets PNG, skill-card-1/2/3 · button-submit · badge-approved · stat-card · logo HTML). 문구: "바로 써먹는 스킬" 01-home.png 눈으로 확인 · "이번 달 미션" · "결과물 제출" · "반복 업무를 줄이는 AI 자동화" 03-mission.png 확인 · "내 자산" · "배움이 쌓여, 나의 자산으로" · "이번 달 수익 ₩29,700" 05-assets.png 확인 · skill-card-1/2/3.html:52 · button-submit.html:59 · badge-approved.html:42 · stat-card.html:46. #1 · #5 문구는 사람이 정한 문구 (decisions.md:7-8) | 0 | 통과 | src/screens · src/parts |
| 공통: 질문 수 | decisions.md 질문 0 | 3 이하 | 통과 | decisions.md:16-17 |

탈락이면 고칠 사람: director · 장면 6의 `phone-frame.html`을 Pattern 칸에서 빼고 화면/부품 칸에 "폰 프레임 부품 (docs/video.md 4장 · motion.md 4-1 폰 화면 장면)"으로 옮기거나, 3장 표에 있는 폰 Pattern으로 바꾼다 (`phone-rise.html`은 #3에서 써서 4-1 Pattern마다 한 장면 → 폰 화면 3개가 되니 쓰지 않는다). 어느 쪽인지 정하기 어렵으면 질문 후보 6을 decisions.md 질문으로 올린다.

참고 (결과에 넣지 않음):
1. 장면 길이: #2 53f · #6 57f는 4-2 일반 장면 `dur-2xl`(58f) ~ 108f보다 짧고 짧은 장면 `dur-xl` ~ 32f보다 길다 (motion.md:103-104). 게이트 조건은 머무름만이라 결과에 넣지 않았다. 고칠 때 같이 보면 좋음 (각 +1 · +5f, 총 446f로 450f 안).
2. #2 카드 등장 "아래 40px → 0 + 투명 → 불투명": `card-stack.html` A 주석은 "줄 마스크 안에서 yPercent 100 → 0". 이 줄이 폰 목업 안 카드에만 해당하는지 주석이 분명하지 않아 떨어뜨리지 않음. motion.md:5 "Pattern 파일에 정해 둔 값은 그대로 쓴다"와 부딪칠 수 있음.
3. #4 밀고 들어가기: motion.md:139 대상은 "제품 클로즈업 · 버튼이 주인공인 폰 장면"인데 #4는 버튼 840px(화면 폭 44%) 제품 장면. motion.md:66 · button-press.html 주석을 근거로 들어 떨어뜨리지 않음 (질문 후보 4).
4. #2 배치는 4-1 "헤드라인(왼쪽) + 카드(오른쪽)" 대신 4-4 카드 여러 장 90% 가로를 따름 (질문 후보 1).
5. scenes.md 질문 후보 6개. decisions.md에 다 올리면 질문 6으로 3 이하를 넘는다. 올릴 것은 3개 이하로 골라야 함.

## 장면표 · 2회차 · 통과
(1회차 탈락 뒤 director 수정본. 바뀐 곳은 장면 6 Pattern 칸 · 화면/부품 칸 · 질문 후보 6. 나머지 조건도 원본 docs에서 다시 셈)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 길이 | 440f (77+53+58+60+59+57+76) = 14.67초 | 360–450f | 통과 | scenes.md:2 · 표 11-17 |
| 글자 장면 첫 · 끝만 | #1 · #7 | 오프닝 · 엔드만 | 통과 | motion.md:90 |
| 폰 화면 장면 수 | 2 (#3 · #6). #6은 phone-frame 정지 프레임 하나에 Pattern(headline · count-up)이 폰 화면 위 Pattern이 아니므로 4-1 "Pattern마다 한 장면"으로 늘지 않음 | 2 이하 (references.md 폰 화면 구성 0 → 기본 2) | 통과 | motion.md:92, 96-97 · gates.md 레퍼런스 1회차 |
| 같은 종류 연속 | 최대 1 (강조를 제품으로 세도 #4 · #5 = 2) | 2 이하 | 통과 | scenes.md:22 · motion.md:97 |
| 같은 배경 연속 | 최대 2 | 3 이하 | 통과 | scenes.md:21 · motion.md:132 |
| 히어로 글자 | 2회 (#1 · #6 `size:"hero"`) | 2회 이상 | 통과 | scenes.md:11, 16 · video.md:64 |
| 동시에 움직이는 요소 | 최대 4 (#3 12f · #5 12f · #6 6f). #6 폰 프레임은 `data-no-timeline` 정지라 0으로 셈 | 4 이하 | 통과 | scenes.md:16 · phone-frame.html:13, 55 · motion.md:114-116 |
| Pattern이 3장 표에 있음 | 14 / 14 파일 (headline :56-57 · card-stack :64 · button-press :66 · press-ring :67 · badge-pulse :69 · count-up :70 · phone-rise :74 · drift :75 · light-streak :76 · converge :77 · end-card :78 · logo-hit :79 · end-shift :80 · bg :81). Pattern 칸에 `phone-frame.html` 0 | 전부 | 통과 (1회차 탈락 조건 해소) | scenes.md:16 Pattern 칸 · motion.md:54-81 |
| 머무름 4-2 | 어긋남 0 (#1~#5 문장 28f · #6 "내 자산" 13f · 숫자 13f · #7 45f, 끝 13f) | 문장 `dur-xl` · 한두 단어 · 숫자 `dur-m` | 통과 | motion.md:106-107 |
| 앞뒤 장면 글자 같은 프레임 | 0 | 0 | 통과 | motion.md:146 |
| 계획상 움직이는 프레임 | 344 / 440 = 78.2% (49+43+58+50+37+44+63 다시 셈 344) | 35% 이상 | 통과 | scenes.md:19 |
| 공통: motion.md 밖 값 | 0. 1회차와 같은 값. 새로 들어온 값: phone-frame 변수 `screen`(주석 변수, phone-frame.html:7) · 감싸개 translateX +380(장면에서 정한 값 표 scenes.md:46, 위치) | 0 | 통과 | scenes.md:28-51 |
| 공통: 금지 효과 | 0 | 0 | 통과 | motion.md:150-153 |
| 공통: 화면에 없는 UI | 0. 아래 판정 참고: 폰 프레임은 UI가 아니라 영상 룩 부품이라 이 조건에서 세지 않음. UI 파일 8개(01-home · 03-mission · 05-assets PNG, skill-card-1/2/3 · button-submit · badge-approved · stat-card · logo HTML) 모두 있음. 05-assets.png 다시 열어 "내 자산" · "이번 달 수익 ₩29,700" · "배움이 쌓여, 나의 자산으로" 눈으로 확인 | 0 | 통과 | src/screens · src/parts · scenes.md:16 |
| 공통: 질문 수 | decisions.md 질문 0 | 3 이하 | 통과 | decisions.md:16-17 |

폰 프레임 판정 (화면에 없는 UI 조건): **UI 아님 → 세지 않음, 통과.**
- docs/video.md:76 4장 제목 "폰 프레임 (모바일 화면을 넣는 부품)", 값은 영상 룩 토큰 `video-phone-bezel` · `-bezel-width` · `-radius` · `-height` (video.md:80-83). 앱 화면 요소(문구 · 버튼 · 카드)가 아니라 screens PNG를 담는 틀.
- docs/video.md:86 · motion.md:92 4-1 "폰 화면 장면 = `src/screens/*.png` 한 장을 폰 프레임 안에" — 폰 화면 장면을 쓰면 폰 프레임은 필요한 구성 요소이고, 조건이 요구하는 "UI는 src/screens · src/parts에"는 프레임 안의 05-assets.png가 충족.
- src/patterns/phone-frame.html:2 주석 근거가 "docs/video.md 4장 · 5장"(motion.md 3장 아님), :13 · :55 `data-no-timeline` 정지 조각, 본문(:56-58)에 글자 0 · 이미지는 변수 `screen` 하나. 화면 문구를 새로 만들지 않음.

참고 (결과에 넣지 않음):
1. phone-frame.html:33 프레임 그림자는 `video-shadow-ui`, #3 phone-rise는 `video-shadow-device`(video.md:84). 두 폰 장면의 그림자가 달라 보일 수 있음. 스냅보드에서 확인.
2. "src/patterns/에 있지만 3장 표에 없는 파일(phone-frame.html)을 화면/부품 칸에 둔다"는 처리가 docs에 적혀 있지 않음. 규칙 제안 후보 (motion.md 3장 또는 4-1에 "폰 프레임은 Pattern이 아니라 video.md 4장 부품" 한 줄).
3. 1회차 참고 1(#2 53f · #6 57f 장면 길이)과 참고 5(질문 후보 6개, 이번 질문 후보 6은 "해결"로 표시돼 남은 후보 5개)는 그대로. decisions.md에 올릴 때 3개 이하로.

## 스냅보드 · 1회차 · 통과
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 장면마다 대표 프레임 1장 · 장면 수 | PNG 7장 (s01–s07, 각 1920×1080), 장면표 장면 7 | 같음 | 통과 | snapboard/s01–s07.png · review.md:10-16 · scenes.md:11-17 |
| 새 글자 크기 (video.md 1 · 3장) | 새 글자 7종: `video-hero` 200px #1 · #6 / `video-headline` 84px #2 · #3 · #4 · #5 · #7(end-card). 범위 밖 0. parts 안 글자(버튼 33.6 · 배지 36 · stat-card 60/42 · 카드 PNG)는 video.md:17 예외 | 200px · 72–88px | 통과 | headline.html:40, 102 · end-card.html:24 · video.md:63-64, 70 |
| 쓴 색(hex)이 design.md · video.md에 있음 | 9종 / 9종 있음: #18191b ×7 · #ffffff ×26 · #3759de ×4 · #2f3032 ×2 · #91a4ed · #f7f7f8 · #edf1ff · #247a51 · #e9eaed (index.html · compositions 전체 grep). rgba는 검정 그림자(video-shadow-ui · video-shadow-device)와 bg.html 토큰뿐. 카드 PNG 안 #e3f2fd · #75777c도 design.md:17, 26 | 0개 밖 | 통과 | design.md:14-26 · video.md:32-84 |
| PNG와 장면표가 다른 요소 | 0 / 7장 (눈으로 확인). #1 두 줄 히어로 · "AI" accent · 빛 왼쪽 ① / #2 헤드라인 위 가운데 · 카드 3장 가로 한 줄 top 585 / #3 폰 오른쪽(1340) · 03-mission · parts 없음 · 헤드라인 왼쪽 / #4 버튼 920–1760 · 헤드라인 왼쪽 / #5 헤드라인 가운데 · 배지 798–1122 아래 / #6 히어로 "내 자산" 왼쪽 · 폰 05-assets 오른쪽 · stat-card 815–1865, top 185 / #7 슬로건 · 로고 · 엔드 그라데이션 | 0 | 통과 | scenes.md:11-17, 31-51 |
| 복사한 Pattern이 원본과 다른 곳 | diff 0 / 5 파일 (headline · bg · phone-rise · phone-frame · end-card) | 0 | 통과 | snapboard/compositions/patterns/* vs src/patterns/* |
| 공통: motion.md 밖 값 | 0. 위치 · 크기 배율은 장면표 "장면에서 정한 값" 그대로. 그림자 ÷3 값(5.333 · 16 · 0.667 · 2px)은 scale(3) 안이라 화면 결과 0 16px 48px · 0 2px 6px = video-shadow-ui (아래 ②) | 0 | 통과 | s05.html:18 · s06.html:21 · video.md:92 |
| 공통: 금지 효과 | 0 (정지 프레임. 복사 Pattern은 원본 그대로, rotateZ · glitch 없음) | 0 | 통과 | snapboard 전체 |
| 공통: 화면에 없는 UI | 0. 화면 03-mission · 05-assets PNG, parts skill-card-1/2/3(카드 아래 줄 "업무 자동화 · 초급 · ChatGPT · 멤버" 등 각 html에 있음) · button-submit "제출하기" · badge-approved "승인 완료" · stat-card "이번 달 수익 ₩29,700" / "전체 4개 / 검수 중 1개 / 판매 중 1개" · 로고(end-card 안 logo svg). 새 문구 0 | 0 | 통과 | src/parts/skill-card-*.html · stat-card.html:46-47 · badge-approved.html:42 · button-submit.html:59 |
| 공통: 질문 수 | decisions.md 질문 0 | 3 이하 | 통과 | decisions.md:17-18 |

builder "막힌 것" 4가지 판정 (review.md:35-38):
1. **noise.png** — 게이트 조건 탈락 아님. docs/video.md:37 `video-noise`(흑백 · 4% · 정지)를 따르고, bg.html:10 "필요한 에셋: assets/noise.png"인데 src/에 원본이 없음(저장소 전체 find 결과 snapboard 안 1개뿐). 256×256 · 시드 7 · 0–255 고른 분포(YAVG 127)는 _plan · docs 어디에도 없는 구현 결정이고 decisions.md "기본값으로 정한 것"에도 안 적혀 있음 → 참고 · 규칙 제안 후보.
2. **그림자 ÷3** — 통과. transform scale(3)은 box-shadow까지 같이 키우므로 화면 결과 0 16px 48px 45% + 0 2.001px 6px 30% = video-shadow-ui(video.md:92). 0.001px 차이는 반올림.
3. **장면 6 stat-card** — 탈락 아님. 셀 수 있는 기준인 video.md:97 괄호 "안의 글자 높이가 헤드라인보다 작게, 36px 이상": heading 60px · counts 42px < 200px, ≥ 36 → 통과. motion.md:127 "보조면 헤드라인보다 작게 video-shadow-ui" 통과. 위치 · 크기는 scenes.md:48 값 그대로(장면표 2회차 통과본). 다만 아래 참고 1.
4. **밝은 배경 노이즈** — 탈락 아님. 값은 bg.html 4% 그대로. 같은 자리(200×200) 측정: 밝은 #2 · #6 YMIN 228 – YMAX 247(점 4% 포함), 어두운 #1 · #4 YMIN 24 – YMAX 48(점 6% 포함). 4%라 노이즈 자체 폭은 약 10단계로 두 배경이 같음. video.md:43 "눈에 띄면 안 된다"는 셀 수 없는 기준이라 참고만.

참고 (결과에 넣지 않음):
1. #6 stat-card 1050×243은 히어로 "내 자산" 글자 덩어리(약 545×180)보다 면적이 크고, 폰 화면(1126–1553) 위 수익 줄을 덮고 폰 오른쪽 밖 1865까지 나간다. 화면 속 "내 자산" 제목 아래가 가려져 폰 화면 장면(motion.md:92 "screens 한 장을 폰 프레임 안에")이라기보다 카드가 주인공처럼 보인다. 고친다면 director가 scenes.md:48 배율을 폰 화면 폭 안(약 ×1.2, 427px)으로 줄이거나 폰 밖 왼쪽 아래로 옮기는 안. 사람 판단 거리.
2. 폰 그림자 차이: #3 phone-rise shadow 2 = `video-shadow-device` 0 60px 120px 검정 40% 한 겹 — 폰 아래 넓고 멀리 퍼짐(s03 오른쪽 아래). #6 phone-frame = `video-shadow-ui` 0 16px 48px 45% + 0 2px 6px 30% — 폰 둘레에 가깝고 짧음(s06). 둘 다 Pattern 원본 값이라 위반 아님. 두 폰 장면이 다른 물건처럼 보일 수 있어 phone-frame.html:33를 video-shadow-device로 맞출지는 규칙 제안 후보.
3. #5 배지 글자 "승인 완료"가 배지 안 왼쪽에 붙어 있음 — badge-approved.html 원본 label 폭 92px 그대로라 위반 아님.
4. review.md:37 "막힌 것 없음"이라 적고 구현 결정 4개를 나열함. 1번(noise.png)은 decisions.md "기본값으로 정한 것"에 한 줄 남기는 편이 다음 단계(생성)에서 추적하기 쉬움.

## 장면표 · 수정 요청 2 · 1회차 · 탈락
(수정 요청 2 반영본. 탈락 횟수는 이 판정부터 새로 셈 → 수정 요청 2 · 1번째 탈락. 바뀐 장면 1 · 2 · 6, 3 · 4 · 5 · 7은 시작f만 밀림. 모든 조건을 docs 원본에서 다시 셈. 사람이 정한 예외 2개 — 히어로 1회 · #6 중간 글자 장면 — 는 decisions.md:24-25 답이라 탈락으로 세지 않음)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 길이 | 446f (77+58+58+60+59+58+76 다시 셈) = 14.87초 | 360–450f | 통과 | scenes.md:2 · 표 12-18 |
| 글자 장면 첫 · 끝만 | #1 · #7 + #6(숫자, 중간) | 오프닝 · 엔드만 | 통과 (#6은 사람이 정한 예외) | motion.md:90 · decisions.md:25 |
| 폰 화면 장면 수 | 1 (#3) | 2 이하 (references.md:5 폰 화면 구성 없음 → 기본 2) | 통과 | motion.md:92, 96 |
| 같은 종류 연속 | 최대 2 (#6 · #7 글자). 글자 · 제품 · 폰 · 제품 · 강조 · 글자 · 글자 | 2 이하 | 통과 | motion.md:97 |
| 같은 배경 연속 | 최대 2 (어두운 · 밝은 · 밝은 · 어두운 · 어두운 · 밝은 · 엔드). 빛 ①–⑥ 뒤 #7 ① (video.md:35 "⑦ 이후 ①부터") | 3 이하 | 통과 | motion.md:132 |
| 히어로 글자 | 1회 (#6 ₩29,700 `video-hero` 200px). #1은 `video-headline` 84px | 2회 이상 | 통과 (사람이 정한 예외) | motion.md:121 · video.md:64 · decisions.md:24 |
| 동시에 움직이는 요소 | 최대 4. #1 12f 3 · #2 6f 빛 줄기(71–84 = 장면 안 0–7f) + 단어 2 + 레일 = 4 / 12f 단어 3 + 레일 = 4 · #3 12f 4 · #4 6f 3 · #5 12f 4 · 53f 3 · #6 6f 빛 줄기(306–319 = 장면 안 0–7f) + 단어 2 + 숫자 줄 = 4 / 12f 단어 3 + 숫자 줄 = 4 / 13–19f 단어 2 + 카운트업 = 3 · #7 3. 레일은 위치 · 배율이 같은 곡선 · 같은 58f라 한 그룹으로 셈 | 4 이하 | 통과 | motion.md:114-116 · scenes.md:13, 17 |
| Pattern이 3장 표에 있음 | 14 / 14 (headline :56-57 · card-stack :64 · button-press :66 · press-ring :67 · badge-pulse :69 · count-up :70 · phone-rise :74 · drift :75 · light-streak :76 · converge :77 · end-card :78 · logo-hit :79 · end-shift :80 · bg :81) | 전부 | 통과 | motion.md:54-81 |
| 머무름 4-2 | 어긋남 1. #6 라벨 "이번 달 수익" = 띄어쓰기 단어 3개, 단어 끝 25f → 점 수렴 시작 45f = 머무름 20f. 3단어는 4-2 "짧은 정보 (숫자, 한두 단어, 강조 크기)"에 들지 않음 → 문장 기준 `dur-xl` 28f 필요, 8f 모자람. scenes.md:7 머무름 기준의 "짧은 라벨 = dur-m"은 docs에 없는 분류. 나머지: #1 43–71 = 28 · #2 25–53 = 28 · #3 25–53 = 28 · #4 19–47 = 28 · #5 25–53 = 28 · #6 숫자 31–45 = 14 (≥ `dur-m` 13) · #7 마지막 움직임 뒤 63–76 = 13 | 문장 `dur-xl` 28f · 숫자 · 한두 단어 `dur-m` 13f | **탈락** | scenes.md:17 (#6 Pattern 칸 "머무름 25–45f") · scenes.md:7 · scenes.md:66 질문 후보 10 · motion.md:106-107 |
| 앞뒤 장면 글자 같은 프레임 | 0 (#1 exit 끝 77 = 컷 · #2→#3 · #3→#4 컷 · #4 수렴 끝 253 = #5 시작 · #5 exit 끝 312 = 컷 · #6 수렴 끝 370 = #7 시작) | 0 | 통과 | motion.md:146 |
| 계획상 움직이는 프레임 | 359 / 446 = 80.5% (49+58+58+50+37+44+63 다시 셈 359) | 35% 이상 | 통과 | scenes.md:20 |
| 공통: motion.md 밖 값 | 0. 시간: 토큰(6 · 13 · 18 · 28 · 58f)과 그 합의 시작점. 곡선 `entrance` · `exit` · `standard` · `flick` · `none`. 흐림 `blur-in/out`. 새 값: #1 top 489 · #2 top 391 · 카드 배율 ×2.0 / ×1.4 · 칸 x −278 / 341 / 960 / 1579 / 2198 · 카드 top 541 / 563.2 · #6 top 356 / 482 · 숫자 줄 등장 거리 40px · 수렴점 960 454 — 모두 "장면에서 정한 값" 표에 있음 (motion.md:5 위치 · 거리 · 크기 변화량). 색 · 크기: `video-headline` 84 · `video-hero` 200 · 행간 34/28(243) · `color-text` · `video-accent` · `video-shadow-ui` | 0 | 통과 | scenes.md:33-43 |
| 공통: 금지 효과 | 0. `flick` y 0.425 · 0.997 (0–1 안), 레일은 한 칸에서 멈춤, 레일 기울기 0°, rotateZ · 글리치 · 레퍼런스 색/폰트/좌표 없음 | 0 | 통과 | motion.md:25, 150-153 |
| 공통: 화면에 없는 UI | 0. asset-card 4상태 문구 = asset-card.html:84-97 그대로 (①–④ 제목 · 메타 하나씩 맞춤), _check/asset-card.png · src/assets/buddy-front-1/2.png 있음. "바로 써먹는 스킬" 01-home.png · "이번 달 미션" · "결과물 제출" · "반복 업무를 줄이는 AI 자동화" · "제출하기" 03-mission.png · "이번 달 수익 ₩29,700" 05-assets.png · stat-card.html:46 (PNG 직접 열어 확인). button-submit · badge-approved · logo HTML 있음. #1 · #5 문구는 사람이 정한 문구 (decisions.md:7-8) | 0 | 통과 | src/parts/asset-card.html · src/screens/*.png |
| 공통: 질문 수 | 3 (decisions.md 질문 1 · 2 · 3) | 3 이하 | 통과 | decisions.md:23-25 |

탈락이면 고칠 사람: director · #6 라벨 "이번 달 수익"(3단어)의 머무름을 `dur-xl` 28f 이상으로(단어 끝 25f → 점 수렴 시작 53f 이상). 그대로 늘리면 #6 66f · 전체 454f로 450f를 넘으니(motion.md:105) 다른 장면에서 4f 이상 덜어 내거나 #6 안 순서를 다시 잡는다. 질문이 이미 3개라 decisions.md에 새 질문을 올릴 수 없음.

참고 (결과에 넣지 않음):
1. 부품 원래 비율 (사람의 수정 요청 2 ②): #2 지켜짐 — 350×74 원본에 가로세로 같은 배율만 (×2.0 = 700×148 · ×1.4 = 490×103.6, 비율 4.73 그대로, scenes.md:35). #6은 부품을 넣지 않음 (stat-card 뺌, 숫자 줄은 새 글자) → 해당 없음. 그 밖 #4 버튼 ×2.4(840×105.6 = 350×44) · #5 배지 ×3(324×96)도 같은 배율.
2. #6 "숫자 줄 등장" 근거 칸 (scenes.md:41): "card-stack.html 이전 장면 값과 같은 거리"라 적혔지만 지금 card-stack.html 주석에는 40px 값이 없고 #2도 이번에 카드 등장 거리를 쓰지 않음. 값(40px)은 "장면에서 정한 값" 표에 있어 조건은 통과. 근거 문구만 고치면 됨 (director가 스스로 짚은 것과 같음).
3. #2 레일 간격 (scenes.md:36): "카드 사이 간격 24, 튕기는 동안에도 24 유지"는 ②–③ 사이에만 맞음. 칸 간격 619 고정에 옆 칸 ×1.4라 ③–④는 처음 129px → 끝 24px, ①–②는 24 → 129px로 바뀜 (④가 화면에 들어오는 순간 약 123px). 화면 밖 칸이라 조건 위반은 아님. 적힌 값과 계산이 다르니 builder가 만들 때 혼동하지 않게 문구 정리 권함.
4. #2 card-stack.html B 주석은 "기울어진 면 위 가로 한 줄"인데 기울기 값이 없어 0°로 둠 (질문 후보 7, decisions.md:39). motion.md:5 "Pattern에 정해 둔 값은 그대로"에 걸리는 값이 없어 떨어뜨리지 않음.
5. #6 숫자 줄 폭 약 800px(42%)는 추정값. 4-4 "숫자 줄 폭 40–60%"(motion.md:122) 아래 한계(768px)와 32px 차이 — 스냅보드에서 실측 필요 (질문 후보 12).
6. #6 카운트업 18f + 머무름 14f = 32f로 count-up.html 주석 "합계 31f"보다 1f 김. 머무름이 `dur-m` 이상이라 떨어뜨리지 않음.
7. #2 · #6 장면 길이 58f = `dur-2xl`로 4-2 일반 장면 하한(motion.md:104)을 이번에 맞춤 (이전 참고 1 해소).

## 장면표 · 수정 요청 2 · 2회차 · 통과
(수정 요청 2 · 1회차 탈락(#6 라벨 머무름) 뒤 director 수정본. 바뀐 것: #6 58 → 66f · #4 60 → 58f · #7 76 → 74f, 전체 450f. 모든 조건을 docs 원본에서 다시 셈. 사람이 정한 예외 2개 — 히어로 1회 · #6 중간 글자 장면 — 는 decisions.md:24-25 답이라 탈락으로 세지 않음)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 길이 | 450f (77+58+58+58+59+66+74 다시 셈, 시작f 0 · 77 · 135 · 193 · 251 · 310 · 376 · 끝 450 이어짐) = 15.00초 | 360–450f · 전체 450f 이하 | 통과 (상한에 딱 맞음) | scenes.md:2 · 표 13-19 · motion.md:105 |
| 장면 길이 4-2 | #2 · #3 · #4 58f = `dur-2xl` · #5 59 · #6 66 · #1 77 · #7 74 — 모두 일반 장면 58–108f 안. #6은 라벨 + 숫자라 "숫자 하나 같은 비트"(짧은 장면)로 보지 않음 | 일반 `dur-2xl` ~ 108f | 통과 | motion.md:103-104 |
| 글자 장면 첫 · 끝만 | #1 · #7 + #6(숫자, 중간) | 오프닝 · 엔드만 | 통과 (#6은 사람이 정한 예외) | motion.md:90 · decisions.md:25 |
| 폰 화면 장면 수 | 1 (#3) | 2 이하 (references.md:5 폰 화면 구성 없음 → 기본 2) | 통과 | motion.md:92, 96 |
| 같은 종류 연속 | 최대 2 (#6 · #7 글자) | 2 이하 | 통과 | motion.md:97 · scenes.md:24 |
| 같은 배경 연속 | 최대 2 (어두운 · 밝은 · 밝은 · 어두운 · 어두운 · 밝은 · 엔드), 빛 ①–⑥ 뒤 #7 ① | 3 이하 | 통과 | motion.md:132, 135 |
| 히어로 글자 | 1회 (#6 ₩29,700 `video-hero` 200px) | 2회 이상 | 통과 (사람이 정한 예외) | motion.md:121 · video.md:64 · decisions.md:24 |
| 동시에 움직이는 요소 | 최대 4. #1 12f 3 · #2 6f 빛 줄기 + 단어 2 + 레일 = 4 / 12f 단어 3 + 레일 = 4 · #3 12f 4 · #4 6f 단어 2 + 버튼 = 3 / 19–37f 눌림 + 링 = 2 / 45–58f 수렴 1 · #5 12f 배지 + 단어 3 = 4 / 53f 퇴장(헤드라인 · 배지) + 빛 줄기 = 3 · #6 6f 빛 줄기(304–317 = 장면 안 0–7f) + 단어 2 + 숫자 줄 = 4 / 12f 단어 3 + 숫자 줄 = 4 · #7 18f 3 / 44f 2 / 50f 2. 밀고 들어가기 · 드리프트 · 빛 흐름은 세지 않음 | 4 이하 | 통과 | motion.md:114-116 · scenes.md:13-19 |
| Pattern이 3장 표에 있음 | 14 / 14 (headline · card-stack · button-press · press-ring · badge-pulse · count-up · phone-rise · drift · light-streak · converge · end-card · logo-hit · end-shift · bg) | 전부 | 통과 | motion.md:54-81 |
| 머무름 4-2 | 어긋남 0. **#4** "결과물 제출" = 띄어쓰기 단어 2개 → "한두 단어" = 짧은 정보, 단어 끝 19f → 점 수렴 45f = 26f ≥ `dur-m` 13f. **#6** 라벨 "이번 달 수익" 3단어 = 문장, 25 → 53f = 28f = `dur-xl` · 숫자 31 → 53f = 22f ≥ 13f. **#7** 슬로건 31 → 74f = 43f ≥ 28f · 로고 글자 50 → 74f = 24f ≥ 13f (끝까지 머묾, 퇴장 없음). 나머지 #1 43–71 = 28 · #2 25–53 = 28 (뒤는 컷까지 계속 보임) · #3 25–53 = 28 · #5 25–53 = 28 | 문장 `dur-xl` 28f · 숫자 · 한두 단어 `dur-m` 13f · 글자 움직임 기준 | 통과 | motion.md:106-107, 110 · scenes.md:16, 18, 19 |
| 앞뒤 장면 글자 같은 프레임 | 0 (#1 exit 71–77 끝 = 컷 77 · #2→#3 · #3→#4 컷 · #4 수렴 238–251 끝 = #5 시작 251 · #5 exit 304–310 끝 = 컷 310 · #6 수렴 363–376 끝 = #7 시작 376) | 0 | 통과 | motion.md:146 |
| 계획상 움직이는 프레임 | 359 / 450 = 79.8% (49+58+58+50+37+44+63 다시 셈 359) | 35% 이상 | 통과 | scenes.md:2, 21 |
| 공통: motion.md 밖 값 | 0. 시간은 토큰(6 · 13 · 18 · 28 · 58f)과 그 합의 시작점 (#4 머무름 26f = 45 − 19, 45 = 58 − 13). 곡선 `entrance` · `exit` · `standard` · `flick` · `none`. 흐림 `blur-in/out`. 위치 · 거리 · 배율(#1 top 489 · #2 top 391 · ×2.0/×1.4 · 칸 x · #4 ×2.4 · 16px · #5 top 421 · #6 top 356/482 · 40px · 수렴점)은 모두 "장면에서 정한 값" 표에 있음. 크기 `video-headline` 84 · `video-hero` 200 (video.md:63-64) | 0 | 통과 | scenes.md:30-53 · motion.md:5 |
| 공통: 금지 효과 | 0. `flick` y 0.425 · 0.997 / `standard` 0 · 0.95 (0–1 안), 되돌아오는 강조는 곡선 하나, 레일 기울기 0°, #3 rotateX만, rotateZ · 글리치 · 레퍼런스 색/폰트/좌표 없음 | 0 | 통과 | motion.md:22-27, 150-153 |
| 공통: 화면에 없는 UI | 0. PNG 직접 열어 확인: "바로 써먹는 스킬" 01-home.png · "이번 달 미션" · "반복 업무를 줄이는 AI 자동화" · "결과물 제출" · "제출하기" 03-mission.png · "이번 달 수익 ₩29,700" 05-assets.png. HTML: asset-card 4상태 문구 12곳 grep 맞음 · button-submit.html:59 "제출하기" · badge-approved.html:42 "승인 완료" · stat-card.html:46. #1 · #5 · #7 문구는 사람이 정한 문구 (decisions.md:6-8) | 0 | 통과 | src/screens/*.png · src/parts/*.html |
| 공통: 질문 수 | 3 (decisions.md 질문 1 · 2 · 3), 새 질문 없음 | 3 이하 | 통과 | decisions.md:21-25 |

참고 (결과에 넣지 않음):
1. #7 엔드 바탕 바꾸기 끝(63f) 뒤 쉬는 시간 11f (< `dur-m` 13f). docs에 이 시간의 기준이 없음 — end-shift.html 주석은 "그 뒤 끝까지 머문다"뿐, 4-2 머무름은 글자 움직임 기준(motion.md:110)이고 글자 머무름은 지켜짐. 그래서 떨어뜨리지 않음 (scenes.md 질문 후보 15). 렌더에서 끝이 급하게 느껴지면 사람에게 보일 거리.
2. #4 "결과물 제출"을 짧은 정보로 본 것은 motion.md:106 "한두 단어" 원문과 맞음. scenes.md:7 "띄어쓰기 단어 3개 이상은 문장"도 docs와 어긋나지 않음 (1회차 참고의 "짧은 라벨" 분류 문제 해소).
3. 전체 450f가 motion.md:105 상한에 딱 맞음 — 생성 · 렌더 단계에서 1f라도 늘면 탈락. 렌더 게이트 ffprobe 15.0초 상한도 같음.
4. #6 숫자 줄 폭 약 800px(42%)는 여전히 추정값 (motion.md:122 아래 한계 768px). 렌더에서 실측 필요 (질문 후보 12).
5. 1회차 참고 2 (#6 등장 거리 근거 문구)는 scenes.md:42에서 고쳐짐.

## 스냅보드 · 수정 요청 2 · 1회차 · 통과
(수정 요청 2로 장면 1 · 2 · 6을 다시 뽑은 판. s03 · s04 · s05 · s07은 이전 것 그대로(내용 같음, 장면 안 프레임 같음). 사람이 정한 예외 2개 — 히어로 1회 · #6 중간 숫자 장면 — 는 decisions.md:27-28 답이라 탈락으로 세지 않음. 머무름 · 프레임 세부는 decisions.md:22 하네스 변경대로 생성 게이트에서 셈)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 장면마다 대표 프레임 1장 · 장면 수 | PNG 7장 (s01–s07, 모두 1920×1080), 장면표 장면 7 | 같음 | 통과 | snapboard/s01–s07.png · review.md:52-56 · scenes.md:13-19 |
| 모아보기 all.png · 칸 수 | all.png 1920×2160, 2열 × 4행, 장면 칸 7 (1–7 번호, 순서 맞음) + 8번째 빈 칸 1 (장면 없음) | 칸 수 = 장면 수 7 | 통과 | snapboard/all.png · review.md:60 |
| 새 글자 크기 (video.md 1 · 3장) | 새 글자 7종: `video-headline` 84px #1 · #2 · #3 · #4 · #5 · #6 라벨 · #7 / `video-hero` 200px · 행간 243 #6 숫자. 범위 밖 0. asset-card 안 글자(11 · 15 · 12px ×1.4/×2.0)는 video.md:17 parts 예외 | 72–88px · 200px | 통과 | index.html:42, 56, 113 · headline.html:40, 102 · s06.html:19-20 |
| 쓴 색(hex)이 design.md · video.md에 있음 | 10종 / 10종 있음: #18191b ×10 · #ffffff ×27 · #3759de ×6 · #f7f7f8 ×3 · #2f3032 ×2 · #75777c ×2 · #e3f2fd ×2 · #91a4ed · #edf1ff · #247a51 (index.html · compositions · assets/parts 전체 grep). rgba는 검정 0.45 · 0.3 = video-shadow-ui 두 겹뿐 | 0개 밖 | 통과 | design.md:14-26 · video.md:32-84, 92 |
| PNG와 장면표가 다른 요소 (s01 · s02 · s06 · all.png 눈으로 + 픽셀) | 0. **#1** 한 줄 "실무에 바로 적용하는 AI", "AI"만 `video-accent`, 가운데, 어두운 · 빛 왼쪽 ①, UI 없음 / **#2** 헤드라인 "바로 써먹는 스킬" 위 가운데 · 밝은 배경 · 카드 3장 보임: 왼쪽 ② review "리서치 비교표 템플릿 · 멤버 공개 · 판매 검수 중"(펭귄) · 가운데 ③ selling "업무 자동화 체크리스트 · 멤버 공개 · 판매 중 · ₩9,900"(파일) · 오른쪽 ④ private-file "주간 보고서 작성 도우미 · 비공개 · 판매 신청 전"(파일), ① 화면 밖. 실측 왼쪽 카드 x 96– · 가운데 610–1310, 높이 542–687 · 오른쪽 1334–1823, 높이 563–665 = 장면표 left 96 – 1824 · top 541 / 563.2와 같음 / **#6** 라벨 "이번 달 수익" + 숫자 "₩29,700" 한 줄만, 화면 · 폰 · stat-card 0, 밝은 배경 · 가운데. all.png 칸 3 · 4 · 5 · 7은 이전 판정 그대로 | 0 | 통과 | scenes.md:13-14, 18, 32-35, 40-41 |
| 복사한 부품 asset-card (builder 선택자 변경) | 복사본 assets/parts/asset-card.html ↔ src/parts/asset-card.html diff 0. s02.html 안 스타일: `#asset-card` → `.asset-card` · `#root ` 접두 · 주석 빼고 규칙 30줄 비교 다른 곳 0 (값 0곳 다름). 마크업: 카드 4장 각각 원본 80-98줄과 비교 다른 곳 0 (`../assets/` → `assets/` 경로만), data-state만 다름. 토큰 6개 :root → #root 값 같음. buddy-front-1/2.png cmp 같음 | 값 · 마크업 다른 곳 0 | 통과 | s02.html:16-24, 39-75 · src/parts/asset-card.html:23-98 |
| 복사한 Pattern이 원본과 다른 곳 | diff 0 / 5 파일 (headline · bg · phone-rise · phone-frame · end-card) | 0 | 통과 | snapboard/compositions/patterns/* vs src/patterns/* |
| 공통: motion.md 밖 값 | 0. 위치 · 배율(#1 top 489 · #2 top 391 · ×2.0 / ×1.4 · 칸 left −523 / 96 / 610 / 1334 · top 541 / 563.2 · #6 top 356 / 482)은 장면표 "장면에서 정한 값" 그대로. 그림자 ÷2.0 · ÷1.4 값은 배율 안이라 화면 결과 0 16px 48px · 0 2px 6px = video-shadow-ui | 0 | 통과 | scenes.md:32-41 · s02.html:28-37 |
| 공통: 금지 효과 | 0 (정지 프레임, rotateZ · rotate( · elastic · bounce · back. · glitch grep 0) | 0 | 통과 | index.html · compositions/* |
| 공통: 화면에 없는 UI | 0. #2 카드 문구 4상태 = asset-card.html:84-97 그대로 · #6 "이번 달 수익" · "₩29,700" = stat-card.html:46 · 05-assets.png · #1 문구는 사람이 정한 문구 (decisions.md:7) | 0 | 통과 | src/parts/asset-card.html · src/parts/stat-card.html |
| 공통: 질문 수 | 3 (decisions.md 질문 1 · 2 · 3), 새 질문 없음 | 3 이하 | 통과 | decisions.md:24-28 |

참고 (결과에 넣지 않음):
1. 부품 원래 비율 (사람 수정 요청 2 ②) — s02 실측: 가운데 카드 700 × 약 146–148 · 옆 카드 490 × 약 103 → 4.73 : 1, 원본 350×74 = 4.73 : 1. CSS도 scale(2) · scale(1.4) 가로세로 같은 배율 하나뿐 (s02.html:31, 34). 지켜짐.
2. #6 숫자 줄 폭 (4-4 40–60%, motion.md:122): 직접 잰 잉크 폭 x 524–1389 = 866px = 45.1% (builder 레이아웃 상자 878.9px = 45.8%와 맞음). 768–1152px 안 → 통과. 장면표 추정 800px(42%)는 실측으로 바꿔 적어 두면 좋음.
3. #2 레일 그림자 겹침: DOM 순서(①→④)대로 뒤 카드 그림자가 앞 카드 위에 깔림 — 가운데 카드 오른쪽 끝 약 1284–1310이 오른쪽 카드 그림자로 조금 어두워지고, 왼쪽 카드 오른쪽 끝 약 552–586도 가운데 카드 그림자로 어두워짐 (s02.png 픽셀). 주인공(가운데) 위에 옆 카드 그림자가 얹히는 셈이라 생성 단계에서 가운데 칸을 맨 위(z-index)로 두는 안. 셀 수 있는 기준 없음.
4. #2 화면 밖 ① 카드 그림자(blur 48px)가 화면 왼쪽 끝 x 0–약 15에 아주 옅게 닿음 (회색 200 미만 픽셀 0 — 거의 안 보임). 요소로 세지 않음.
5. #2 헤드라인(84px)과 가운데 카드 제목(15×2.0 = 30px)의 크기 차는 커서 주인공(장면표: 카드 레일)보다 헤드라인이 먼저 읽힘. 주인공 판단은 셀 수 없는 기준이라 사람 판단 거리.
6. review.md 위쪽(첫 스냅보드 표 · "새 글자 크기" `video-hero` #1 · #6)은 이전 판 기록이라 지금 파일과 다름 — 아래 "수정 요청 2 다시 뽑기" 절이 현재 기준.

## 장면표 · 수정 요청 4 · 1회차 · 통과
(수정 요청 4 반영본: #1 "AI" → 앱 아이콘 단어 겹쳐 바꾸기 · #2 카드 그림자 `video-shadow-ui-soft`. 장면 길이 · 시작f는 그대로. 모든 조건을 docs 원본에서 다시 셈. 사람이 정한 예외 2개 — 히어로 1회 · #6 중간 숫자 장면 — 는 decisions.md 질문 2 · 3 답이라 탈락으로 세지 않음. 머무름 · 프레임 세부는 decisions.md 하네스 변경대로 생성 게이트에서 셈 — 여기서는 참고만)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 길이 | 450f (77+58+58+58+59+66+74, 시작f 0 · 77 · 135 · 193 · 251 · 310 · 376 · 끝 450 이어짐) = 15.00초 | 360–450f | 통과 (상한에 딱 맞음) | scenes.md:2 · 13-19 · motion.md 4-2 |
| 장면 종류 · 개수 4-1 | 글자 #1 · #7 + #6(숫자, 중간) · 폰 화면 1 (#3) · 같은 종류 연속 최대 2 (#6 · #7) | 글자 첫 · 끝만 · 폰 2 이하 (references.md 폰 화면 구성 없음) · 연속 2 이하 | 통과 (#6은 사람이 정한 예외) | motion.md 4-1 · scenes.md:24 · decisions.md 질문 3 |
| 같은 배경 연속 4-5 | 최대 2 (어두운 · 밝은 · 밝은 · 어두운 · 어두운 · 밝은 · 엔드) | 3 이하 | 통과 | scenes.md:23 · motion.md 4-5 |
| 히어로 글자 | 1회 (#6 ₩29,700) | 2회 이상 | 통과 (사람이 정한 예외) | motion.md 4-4 · video.md 3장 · decisions.md 질문 2 |
| 동시에 움직이는 요소 4-3 | 최대 4. **#1** 12f "바로" · "적용하는" · "AI" = 3 / 25–31f "AI" exit · 아이콘 enter · 줄(감싸개) 자리 잡기 = 3 / 71–77f 헤드라인 fade · 아이콘 exit · 빛 줄기 = 3. #2–#7은 이전 판과 같음 (#2 · #3 · #5 · #6 최대 4, #4 · #7 최대 3) | 4 이하 | 통과 | scenes.md:13-19 · motion.md 4-3 |
| Pattern이 3장 표에 있음 | 15 / 15 (이전 14 + `word-swap.html` = 3장 "단어 겹쳐 바꾸기") | 전부 | 통과 | motion.md:58 |
| #1 word-swap 주석 순서 (구현 없음 → 장면에서 만듦) | 맞음 4 / 4: 같은 자리(같은 마스크 칸 top 489 · 높이 102) · 앞 단어 `exit` 위로 25–31f · 다음 것 `enter` 아래에서 25–38f · 겹침 25–31 = 6f = `dur-s` · 폭이 달라지면 줄 전체 `enter` 25–38f로 다시 자리 잡기 · 다음 것도 `blur-in` | word-swap.html 주석 | 통과 | src/patterns/word-swap.html:5-9 · scenes.md:13, 35-37 |
| #1 brand-icon = src/parts에 있는 UI · 원래 비율 | `src/parts/brand-icon.html` 있음 (HTML 98 폭 · padding 16 + 심볼 66 = 높이 98, 정사각. `_check/brand-icon.png` 눈으로 정사각 확인). scale 하나 84 ÷ 98 = 0.857143 → 84×84, 가로세로 같은 배율, 부품 파일 안 고침. 바탕 #000 = design.md `color-illustration-000000` | 원래 비율 · src/parts 안 | 통과 | src/parts/brand-icon.html:19-27 · scenes.md:13, 38 · design.md:36 |
| #2 카드 그림자 | `video-shadow-ui-soft` (0 8px 24px 검정 12% + 0 1px 3px 검정 8%) = docs 값 그대로 | video.md 5장 | 통과 | scenes.md:14, 43 · video.md:93 |
| 계획상 움직이는 프레임 | 354 / 450 = 78.7% (44+58+58+50+37+44+63 다시 셈 = 354, #1은 0–38 · 71–77 = 44) | 35% 이상 | 통과 | scenes.md:2, 21 |
| 머무름 4-2 · 앞뒤 글자 4-7 | 참고만 (생성 게이트에서 셈) | — | — | decisions.md 하네스 변경 |
| 공통: motion.md 밖 값 | 0. 시간 6 · 13 · 18 · 28 · 58f 토큰과 그 합 (#1 exitAt 71f = 38 + 33). 곡선 `entrance` · `exit` · `standard` · `flick` · `none`. 흐림 `blur-in` · `blur-out` 4px. #1 새 값(translateY ±102 · 아이콘 84×84 · top 498 · 감싸개 translateX 식)은 모두 "장면에서 정한 값" 표에 있음. 크기 `video-headline` 84 · `video-hero` 200. 그림자 `video-shadow-ui-soft`(video.md:93) | 0 | 통과 | scenes.md:33-43 · motion.md:5 |
| 공통: 금지 효과 | 0. 4곡선 y 모두 0–1 안, #1 아이콘 위아래 이동만(회전 없음), 바꾸기는 마스크 안 이동 + 흐림(글리치 아님), 레퍼런스 색 · 폰트 · 좌표 없음 | 0 | 통과 | motion.md 1장 · 5장 · scenes.md:26 |
| 공통: 화면에 없는 UI | 0. 새 UI는 #1 brand-icon 하나 = src/parts/brand-icon.html. 나머지 문구 · 부품은 이전 판과 같음 (asset-card · 03-mission.png · button-submit · badge-approved · stat-card · 05-assets.png). #1 문구는 사람이 정한 문구 | 0 | 통과 | src/parts/*.html · decisions.md 브리프 답 |
| 공통: 질문 수 | 3 (decisions.md 질문 1 · 2 · 3), 새 질문 없음 (scenes.md 질문 후보 16–19는 기본값으로 정함) | 3 이하 | 통과 | decisions.md 질문 |

참고 (결과에 넣지 않음):
1. 4-1 글자 장면은 "UI 없음"인데 #1(오프닝)에 brand-icon이 들어감. 사람 수정 요청 4 ② 지시라 탈락으로 세지 않음 (엔드 카드 로고와 같은 성격). 6단계 규칙 후보: "글자 장면에 브랜드 아이콘 · 로고는 글자 한 칸으로 둘 수 있다".
2. 4-4 parts 원본은 "인터랙션 없는 parts는 4x PNG"인데 brand-icon은 HTML 그대로 (PNG 없음, asset-card와 같은 처리 — 질문 후보 14). 장면표 게이트 조건 아님.
3. #1 "AI"는 다 올라온 25f에 바로 exit라 멈춰 보이는 프레임 0 (4-2 짧은 정보 머무름 `dur-m` 없음, 질문 후보 17). 생성 게이트에서 셀 곳 — 그대로면 거기서 걸릴 수 있음.
4. #1 아이콘 등장 · 퇴장에 `blur-in` · `blur-out`(motion.md 1장 "텍스트 등장 · 헤드라인 퇴장")을 씀 — word-swap.html "다음 단어에도 blur-in"을 근거로 줄 일부로 본 것. docs와 어긋나지 않음.
5. #1 brand-icon 바탕 #000이 `video-bg` #18191b 위라 상자 가장자리가 거의 안 보임 (질문 후보 19). 스냅보드 · 렌더에서 눈으로 볼 거리.

## 스냅보드 · 수정 요청 4 · 1회차 · 탈락
(수정 요청 4로 s01 · s02 · all.png를 다시 뽑은 판. s03–s07은 이전 것 그대로. 사람이 정한 예외 3개 — 히어로 1회 · #6 중간 숫자 장면 · #1 글자 장면 안 아이콘 — 는 탈락으로 세지 않음. 머무름 · 프레임 세부는 생성 게이트에서 셈)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 장면마다 대표 프레임 1장 · 장면 수 | PNG 7장 (s01–s07, 모두 1920×1080), 장면표 장면 7 | 같음 | 통과 | snapboard/s01–s07.png · review.md:201-206 · scenes.md:14-20 |
| 모아보기 all.png · 칸 수 | 1920×2160, 2열 × 4행, 장면 칸 7 (번호 1–7 순서) + 빈 칸 1. 칸 1 · 2는 새 s01 · s02와 같음 (눈으로) | 칸 수 = 장면 수 7 | 통과 | snapboard/all.png · review.md:207 |
| 새 글자 크기 (video.md 1 · 3장) | #1 "AI" 84px (`video-headline`, s01.html:33) · 헤드라인 호스트 `--video-headline-size`. index.html · compositions 전체 font-size: 84 · 200 · var(headline) + asset-card 안 11 · 12 · 14 · 15px (video.md 1장 parts 예외) | 72–88px · 200px | 통과 | s01.html:33 · index.html · s02.html |
| 쓴 색(hex) | 11종 모두 있음: 이전 10종 + `#000000` = `color-illustration-000000` (design.md:36). rgba: 검정 0.12 · 0.08 = `video-shadow-ui-soft` (video.md:93), 그 밖 rgba는 diff 0인 Pattern(bg · phone-rise) 안 값 | 0개 밖 | 통과 | s01.html:21 · s02.html:32, 35 · design.md:36 · video.md:93 |
| PNG와 장면표가 다른 요소 (s01 · s02 · all.png 눈으로 + 픽셀) | **1**. #2 카드 그림자 크기: 장면표는 "배율이 걸린 카드 요소에 그림자를 주므로 그림자도 같은 배율로 커짐"(가운데 ×2.0 → 화면 0 16px 48px)인데, s02.html은 ÷ 배율로 적어 화면 결과 = 토큰 값 0 8px 24px. s02.png 가운데 카드 아래(x 940–980) 밝기: 카드 아래 끝 약 689 → 692 최저 223 → 720 약 240으로 배경(242)에 돌아옴 = 오프셋 8 + 흐림 24 범위, 배율 적용(약 750까지)과 다름. 그 밖 다른 요소 0: #1 한 줄 "실무에 바로 적용하는 [아이콘]", "AI" 안 보임, 잉크 x 575–1347 가운데 961, 아이콘 상자 x 1265–1347 · y 498–581 (장면표 84×84 · top 498), 그림자 없음, 어두운 · 빛 왼쪽 ① / #2 카드 배치 · 문구 · 헤드라인 이전 판과 같음 | 0 | **탈락** | scenes.md:44 ↔ s02.html:31-35 · s02.png · 장면 #2 |
| 복사한 부품 · Pattern | brand-icon.html 복사본 diff 0 · logo-symbol-white.svg cmp 같음 · s01.html 스타일 brand-icon.html:18-27과 같은 값 (`#root` 접두만). Pattern 5파일 diff 0 | 0 | 통과 | snapboard/assets/parts · compositions/patterns/* |
| 공통: motion.md 밖 값 | 0. #1 새 값(칸 left 1315.67 · top 489 · 84×102 · translateY −102 · blur 4px · scale 0.857143 · top 9 → 498 · 감싸개 −51.13)은 장면표 "장면에서 정한 값" 식(scenes.md:34-39)과 렌더 실측으로 나온 값. #2 그림자 화면 결과 = `video-shadow-ui-soft` 토큰 | 0 | 통과 | scenes.md:34-39 · s01.html:25-40 |
| 공통: 금지 효과 | 0 (rotateZ · rotate( · elastic · bounce · back. · spring · glitch grep 0) | 0 | 통과 | index.html · compositions/* |
| 공통: 화면에 없는 UI | 0. 새 UI = brand-icon (src/parts/brand-icon.html) 하나. #1 문구는 사람이 정한 문구 (decisions.md:7). #2 카드 문구 = asset-card.html 그대로 | 0 | 통과 | src/parts/brand-icon.html · decisions.md:7 |
| 공통: 질문 수 | 3 (decisions.md 질문 1 · 2 · 3), 새 질문 없음 | 3 이하 | 통과 | decisions.md 질문 |

탈락이면 고칠 사람: director · scenes.md:44 "그림자도 같은 배율로 커짐"을 "÷ 배율로 적어 화면 결과 = `video-shadow-ui-soft` 토큰 값"으로 맞추기 (지금 PNG는 docs 토큰 그대로라 다시 뽑을 필요 없음). 토큰 × 배율이 맞다고 정하면 builder가 s02.html 그림자를 배율 안 토큰 값으로 바꿔 다시 뽑음.

참고 (결과에 넣지 않음):
1. (막힌 것 ②) #1 줄 폭: 장면표 "약 970px (약 50%)"(scenes.md:34)는 추정, 실측 잉크 x 575–1347 = 772px ≈ 40%. docs에 글자 장면 헤드라인 줄 폭 기준 없음 (4-4 40–60%는 숫자 줄) → 요소 차이로 세지 않음. 장면표 추정값을 실측으로 고쳐 두면 좋음.
2. (막힌 것 ③) 아이콘 검정 상자 대 배경 대비 1.26–1.32:1 — 상자 가장자리는 거의 안 보이고 흰 심볼(대비 21:1)만 읽힘. docs에 부품 상자 가장자리 대비 기준 없음, 부품 그대로 · 그림자 없음은 장면표대로 (질문 후보 19 기본값). 사람 눈으로 볼 거리.
3. 이전 판 참고 3 (#2 옆 카드 그림자가 가운데 카드 위에 얹힘)은 soft 그림자로 약해짐. 가운데 칸 z-index는 생성 단계 안.

## 렌더 · 1회차 · 탈락
(대상 render/launch-b.mp4. 생성 게이트 기록과 따로 셈. 측정 = references/README.md:36 명령 그대로 — 폭 320 · tblend difference · signalstats YAVG, 2.0 초과. tblend 출력 449개, k번째 값 = 프레임 k와 k+1 차이 → 프레임 k+1에 붙여 셈, 프레임 0은 움직임 아님으로 셈. 비율 분모 = 450)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| 크기 · fps · 길이 (ffprobe) | 1920×1080 · 30/1 · 15.000초 · 450f | 1920×1080 · 30fps · 12.0–15.0초 | 통과 | render/launch-b.mp4 |
| 움직이는 프레임 (전체) | **73 / 450 = 16.2%** (계획 354 / 450 = 78.7%, 차이 −62.5%p) | 35% 이상 | **탈락** | references/README.md:30-37 · scenes.md:2, 22 |
| 장면별 (실측 · 계획) | #1 0–77: 2/77 = 2.6% · 계획 44/77 = 57.1% / #2 77–135: 1/58 = 1.7% · 계획 58/58 = 100% / #3 135–193: 39/58 = 67.2% · 계획 58/58 = 100% / #4 193–251: 4/58 = 6.9% · 계획 50/58 = 86.2% / #5 251–310: 2/59 = 3.4% · 계획 37/59 = 62.7% / #6 310–376: 19/66 = 28.8% · 계획 44/66 = 66.7% / #7 376–450: 6/74 = 8.1% · 계획 63/74 = 85.1% | (참고: 기준은 전체 비율) | — | scenes.md:22 · 장면 #1–#7 |

탈락이면 고칠 사람: director · 장면표 "움직이는 프레임"을 계획한 프레임이 실제로 YAVG 2.0을 못 넘음 (계획 354f 중 실측 73f). 프레임당 화면 변화가 큰 움직임(이동 거리 · 면적)으로 장면표를 다시 짜고, 계획 비율을 "YAVG 2.0 넘을 움직임"만으로 다시 세기. 렌더는 builder가 그 뒤 다시.

참고 (결과에 넣지 않음):
1. 문턱 민감도 (449개 값): YAVG > 0.5 = 244 · > 1.0 = 149 · > 2.0 = 73. 움직임은 있는데 작아서 2.0 아래에 걸린 프레임이 많음 (#3 레일은 58f 모두 > 1.0, 그중 39f만 > 2.0 · 최대 3.71).
2. #2 · #4 · #6 · #7 첫 프레임 근처 최대 YAVG 173–181 = 배경이 바뀌는 컷 한 프레임. #2 레일 튕김(계획 58f)은 > 2.0이 1f, > 1.0이 20f — 가운데 카드 크기 · 이동이 프레임당 화면 변화로는 작게 잡힘.
3. #1 · #5 · #7 글자 등장(단어 상승 · blur-in)은 프레임당 2.0을 거의 못 넘음 (#1 최대 6.62, > 2.0 2f).

## 생성 · 1회차 · 탈락
(대상: `out/launch-b/` index.html · compositions/* · review.md "생성", 렌더 전. 기준은 docs · src · scenes.md 원본에서 다시 읽음. 사람이 정한 예외 3개 — 히어로 1회 · #6 중간 숫자 장면 · #1 글자 장면 안 아이콘 — 는 탈락으로 세지 않음. 4-2 머무름 · 4-7 글자 겹침은 decisions.md:23 하네스 변경대로 여기서 셈. decisions.md:31 사람 지시대로 결과와 상관없이 렌더는 진행 중)
| 조건 | 센 값 | 기준 | 결과 | 어디 (파일:줄 · 장면 #) |
|---|---|---|---|---|
| HyperFrames 검사 오류 (`npx hyperframes check --json`, critic이 다시 돌림) | ok true · Lint 오류 0 (경고 1 duplicate_media_discovery_risk) · Runtime 0 · Layout 0 · Motion 0 · Contrast 오류 0 (경고 3, 23 통과) · Craft 오류 0 (경고 2). 경고는 모두 asset-card 안 글자 · 마크업 (video.md:17 parts 예외) | 오류 0 | 통과 | out/launch-b (hyperframes 0.8.186) |
| 복사한 Pattern이 원본과 다른 곳 | diff 0 / 4 파일 (headline · bg · phone-rise · end-card). 복사한 부품 · 에셋 cmp 같음: brand-icon.html · asset-card.html · logo-symbol-white.svg · screens/03-mission.png | 0 | 통과 | compositions/patterns/* ↔ src/patterns/* |
| 금지 효과 grep (`rotateZ\|rotate\(\|elastic\|bounce\|back\.\|spring\|glitch`) | 0건 (index.html · compositions/*.html · compositions/patterns/*.html) | 0 | 통과 | — |
| cubic-bezier y 0–1 | 곡선 4종만: entrance (0.15, 0.85, 0.55, 0.95) · exit (0.45, 0.05, 0.85, 0.15) · standard (0.55, 0, 0.1, 0.95) · flick (0.2, 0.425, 0, 0.997). 모든 y 0–1 안. 그 밖 ease는 `none`(드리프트) | y 0–1 | 통과 | index.html:192-193 · s01.html:83-84 · s02.html:132 · s04.html:69 · s05.html:56-57 · s06.html:52 · s07.html:44-45 · s07-ring.html:34 · streak.html:36 |
| 머무름 4-2 (코드 타이밍 ↔ scenes.md) | 코드 시점은 장면표와 모두 같음. 글자별: **#1 "AI" 0f** (마스크 상승 12–25f 끝나자마자 25f exit 시작 — 스냅샷 24 · 25 · 26f로 확인, 멈춘 프레임 없음) < 짧은 정보 `dur-m` 13f · #1 줄 "실무에 바로 적용하는 [아이콘]" 38–71f = 33f ≥ 28 · #2 "바로 써먹는 스킬" 25–58f = 33f · #3 "이번 달 미션" 25–58f = 33f · #4 "결과물 제출" 19–45f = 26f ≥ 13 · #5 "도전부터 미션 완료까지" 25–53f = 28f · #6 라벨 25–53f = 28f · 숫자 31–53f = 22f ≥ 13 · #7 슬로건 31–74f = 43f · 로고 글자 50–74f = 24f. 탈락 1 (#1 "AI") | 짧은 정보 움직임 뒤 `dur-m` 13f · 문장 `dur-xl` 28f | **탈락** | s01.html:92, 94 · scenes.md:14 · scenes.md:79 (질문 후보 17) · decisions.md:59 (기본값, 사람 답 아님) · motion.md:106 · 장면 #1 |
| 앞뒤 장면 글자 같은 프레임 4-7 (critic 스냅샷 76/77 · 250/251 · 309/310 · 375/376f) | 0. 76f #1 줄 fade 중 · 77f #2 헤드라인 마스크 아래(카드만) / 250f #4 묶음 점에 가까움 · 251f #5 빈 화면 / 309f #5 헤드라인 · 배지 exit 중 · 310f #6 빈 화면 / 375f #6 빈 화면 · 376f #7 빈 화면. 모든 앞 장면 호스트 data-duration 끝 = 컷 프레임 | 0 | 통과 | index.html:42-173 · 장면 #1–#7 |
| 공통: motion.md 밖 값 — review.md "구현에서 정한 것" 8개 | 밖 **1** / 8. ① 되돌아오는 강조 크기 = 1 ∓ 0.04 × sin(πp), p = `emphasis`(entrance 18f) 진행값 하나: 0.96 · 1.04 · 곡선 하나는 motion.md:47 값, p∈[0,1]·sin∈[0,1]이라 0.96–1 · 1–1.04 밖으로 안 나감 → 밖 0 (빛 번짐 불투명도 0 → 1 → 0 × 22% = video.md:95 값) ② #2 그림자 ÷ 배율 → 화면 결과 `video-shadow-ui-soft` = video.md:93 · decisions.md:29 · scenes.md:44 → 0 ③ #2 배율식 2.0 + (1.4 − 2.0) × min(1, \|x − 960\| ÷ 619) = scenes.md:15, 41-42 값(2.0 · 1.4 · 619 · 960, "위치에 묶여 같은 곡선") → 0 ④ 빛 줄기: 기울기 30° = video.md:38 값(skewX, 회전 아님) → 0 / **이동 x −800 → 2240은 docs · scenes.md "장면에서 정한 값"(scenes.md:31-58)에 없음 → 밖 1** (light-streak.html은 "왼쪽 → 오른쪽 · 끝은 화면 밖"만, 거리 없음) ⑤ #7 아이콘 높이 66.21 · 가운데 (662.62, 638.96): end-card.html(diff 0)에 정해 둔 로고 위치 · 크기(#ec-logo left 630.6 · top 597 · ×4.421)를 잰 값, 링 · 빛 지름 ×3 = video.md:94-95 → 0 ⑥ 엔드 바탕 clip-path inset(100%) → inset(0) `standard` 13f: end-shift.html "아래부터 차오름 · 층이 아래에서 위로 덮음" 그대로, 새 숫자 없음 → 0 ⑦ 점 수렴 수렴점 (960, 611) · (960, 454) = scenes.md:49, 56 · 감싸개 순서는 값 아님 → 0 ⑧ #1 −47.45 → −51.13 · 칸 left 1315.67 = scenes.md:34, 37 식 + 렌더 실측 → 0. 그 밖 코드 값(#4 · #5 등장 16px · #6 40px · 버튼 ×2.4 · 배지 ×3 · 링 105.6 → 316.8 · 시간 6 · 13 · 18 · 58f)은 scenes.md · docs에 있음 | 0 | **탈락** | streak.html:6-7, 39 · review.md:172 · 장면 #1 → #2 · #5 → #6 |
| 공통: 금지 효과 | 0. sin(πp)는 목표(0.96 · 1.04)를 넘지 않는 되돌아오는 강조 = motion.md:47이 허용한 움직임 (오버슈트 아님: entrance 곡선 y 0–1 · 단조 증가라 p가 1을 넘지 않음). skewX는 원근 아닌 기울임이지만 화면 평면 회전 등장(rotateZ) 아님. 글리치 · 레퍼런스 색 · 폰트 · 좌표 없음 | 0 | 통과 | s04.html:81-83 · s05.html:69-71 · s07.html:54-56 · motion.md:150-153 |
| 공통: 화면에 없는 UI | 0. 부품: brand-icon · asset-card(문구 8종 모두 asset-card.html에 있음) · button-submit "제출하기" · badge-approved "승인 완료" · 03-mission.png(눈으로: "이번 달 미션" · "결과물 제출" · "제출하기" 있음) · #6 "이번 달 수익 ₩29,700" = stat-card.html:46. #1 · #5 · #7 문구는 사람이 정한 문구 (decisions.md:4-8) | 0 | 통과 | src/parts/*.html · src/screens/03-mission.png |
| 공통: 질문 수 | 3 (decisions.md:35-37), 새 질문 없음 | 3 이하 | 통과 | decisions.md:33-37 |

탈락이면 고칠 사람: director
- #1 "AI" 머무름: scenes.md:14 #1 "AI" 다 올라온 25f 뒤 `dur-m` 13f 머문 다음 바꾸기(→ 38f exit)로 고치고 450f 안에 두려면 다른 장면에서 13f를 빼야 함 (#2 · #3 · #4는 일반 장면 하한 58f라 여유 없음 — 그래서 사람 판단 거리. 질문은 이미 3개라 새 질문을 더하면 질문 수 조건에 걸림 → 수정 요청으로 받거나 기존 판단을 사람이 예외로 정해 주어야 함)
- 빛 줄기 이동: scenes.md "장면에서 정한 값"에 `1 → 2 · 5 → 6 | 빛 줄기 이동 | x −800 → 2240 (화면 밖 왼쪽 → 화면 밖 오른쪽 최소 거리, skewX −30° 퍼짐 ±311.8 포함)` 한 줄 추가 (코드는 그대로 둬도 됨)

참고 (결과에 넣지 않음):
1. 빛 줄기는 밝은 배경(#2 · #6) 쪽 반(77–84f · 310–317f)에서 screen 합성이라 거의 안 보임 — critic 스냅샷 77f에서도 줄기 없음 (review.md:180). docs 값 그대로라 셀 기준 없음. 렌더에서 사람이 볼 거리.
2. 되돌아오는 강조는 p에 entrance를 걸어서 sin(πp)의 꼭짓점(0.96 · 1.04 · 빛 최대)이 18f 중 앞쪽 몇 프레임에 오고 돌아오는 쪽이 김. motion.md:47은 곡선 하나만 정하고 꼭짓점 위치는 정하지 않음 → 규칙 후보로만.
3. "되돌아오는 강조"를 곡선 하나로 만드는 식(sin(πp))이 docs · Pattern 주석 어디에도 없어 영상마다 다르게 만들 수 있음 → 규칙 후보 (motion.md 2장 또는 button-press · badge-pulse · logo-hit 주석).
4. #7 엔드 바탕이 다 바뀐 뒤 쉬는 시간 11f (63–74f) < `dur-m` — 이전 판정 참고와 같음, 글자 머무름은 지켜짐.
5. 빛 줄기 이동 거리는 light-streak.html 주의("이동 거리가 길면 standard 곡선 때문에 줄기가 4f 정도만 보인다")와 이어지는 값이라 Pattern 주석에 기본 거리(화면 밖 → 화면 밖 최소)를 적어 두면 영상마다 다시 정하지 않아도 됨 → 규칙 후보.
