# 허들링 모션 하네스

레퍼런스를 바꿔 넣어도 우리 서비스의 색 · 글자 · 화면으로 일관된 12~15초 16:9 런칭 영상을 만든다.
영상 하나 = `out/<영상이름>/`. 시작은 `/make-video <영상이름>`. 새 영상이면 하네스가 세 가지(분위기 · 핵심 메시지 · 엔드 카드 문구)를 묻고 `brief/BRIEF.md` 초안을 써서 승인받은 뒤, `out/<영상이름>/BRIEF.md`로 복사해 그 영상의 기록으로 남긴다.

## 꼭 지킬 것 3개

1. **값은 docs/에서만.** 색 · 폰트는 `docs/design.md`, 영상 룩 · 글자 크기 · 배경은 `docs/video.md`, 시간 · 곡선 · 흐림 · Pattern · 장면 규칙 · 금지 목록은 `docs/motion.md`. 레퍼런스에서는 구성 문법만 가져오고 숫자는 가져오지 않는다. 문서에 없는 값이 필요하면 만들지 말고 멈춰서 묻는다. 이동 거리 · 위치처럼 `docs/motion.md`가 "장면마다 정한다"고 한 값만 장면표에서 정한다.
2. **장면표 → 스냅보드 승인 전에는 `_plan/` 밖에 만들지 않는다.** 두 승인이 `out/<영상이름>/_plan/decisions.md`에 적히기 전에는 `out/<영상이름>/_plan/` 밖에 파일을 만들거나 고치지 않는다. 예외는 브리프뿐: `brief/BRIEF.md` 초안 쓰기와, 승인된 브리프를 `out/<영상이름>/BRIEF.md`로 복사하기.
3. **다 만들면 critic 검수.** 단계마다 critic이 셀 수 있는 조건으로 먼저 판정하고, 통과한 것만 사람에게 보여준다. 같은 게이트에서 2번 떨어지면 멈추고 묻는다.

## 폴더 규칙

| 경로 | 쓰임 | 고치는 사람 |
|---|---|---|
| `docs/` | 값의 원본 (design · video · motion) | 사람만. 하네스는 제안만 |
| `src/screens/` · `src/parts/` · `src/patterns/` · `src/assets/` | 화면 · 부품 · 움직임 조각 · 폰트/로고 원본 | 사람만. 복사해서 쓰고 원본은 고치지 않는다 (각 파일 맨 위 주석이 쓰는 법) |
| `references/` | 레퍼런스 이미지 · 페이지 글 · 움직이는 프레임 측정 방법 (`README.md`) | 사람만 |
| `brief/BRIEF.md` | 지금 만드는 영상의 브리프 한 장 (`brief/BRIEF.template.md` 틀). 새 영상마다 덮어쓴다 | director가 초안 → 사람 승인 |
| `out/<영상이름>/BRIEF.md` | 승인된 브리프 복사본 = 그 영상의 기록. 이후 단계는 이것을 읽는다 | 메인이 복사만. 고치지 않는다 |
| `out/<영상이름>/_plan/` | 에이전트끼리 주고받는 파일 5개 + 스냅보드 이미지 | 아래 표 |
| `out/<영상이름>/` (나머지) | HyperFrames 프로젝트 · 렌더 결과 | builder만, 승인 뒤에 |

`_plan/` 파일 5개 (이것 말고 만들지 않는다. 스냅보드 PNG만 `_plan/snapboard/`에 둔다)

| 파일 | 주인 | 내용 |
|---|---|---|
| `references.md` | art-director | 가져올 것 / 가져오지 않을 것 |
| `scenes.md` | director | 장면표 |
| `review.md` | builder | 스냅보드 · 만든 것 대응표 · 막힌 것 |
| `decisions.md` | 메인 (사람과 말하는 쪽) | 승인 · 수정 요청 · 질문 · 기본값으로 정한 것 |
| `gates.md` | critic | 게이트 판정 기록 · 규칙 제안 |

- 레퍼런스는 `references/` 안의 이미지와 페이지 글만 쓴다. 영상 파일을 내려받거나 영상 URL을 직접 읽지 않는다.
- 역할은 `.claude/agents/` 4개: art-director · director · builder · critic. 서로 `_plan/` 파일로만 주고받는다.

## 작업 순서

레퍼런스 정리(art-director) → 장면표(director) → **승인** → 스냅보드(builder) → **승인** → 생성(builder) → 검수 · 렌더(critic · builder) → 다음에도 지킬 것을 규칙으로 제안. 자세한 순서와 게이트는 `.claude/skills/make-video/SKILL.md`.
