# 목표 퀄리티 레퍼런스
- snapcn 유튜브: https://www.youtube.com/channel/UCdNIsTK4oYip5yIny6azJcA
- snapcn 런치 영상: https://media.snapcn.dev/home/snapcn-launch.mp4
- snapcn 무료 컴포넌트 (MIT, 옮겨 쓰기 가능): Card Rail · Phone Frame · Orb Swarm
- snapcn Pro 컴포넌트 (유료, 구성만 참고): Wall Cut · Checkout Push
- Opus 5.5 모션 영상 사례: https://skillry.dev/ai-videos/opus-5-5?category=motion&video=colecornelll-047465
- oneshotprompts (기법 이름 · 정의 사용 가능, 통째 복제 금지): https://oneshotprompts.com/#/motion-design

## 기준점 출처
- snapcn 런치 영상: https://media.snapcn.dev/home/snapcn-launch.mp4
- 기법 출처: snapcn Card Rail(MIT) · oneshotprompts
- phone-push 출처: snapcn Checkout Push (Pro) 공개 설명 https://snapcn.dev/docs/screens/checkout-push — 구성만, 코드 · 수치는 받지 않음
- phone-rise 출처: Remotion 프롬프트 https://www.remotion.dev/prompts/apple-style-device-rise-animation — 기법(변형 순서 · 아래 기준점 · 감속 상승)만, 프롬프트를 옮기지 않음
- 값은 이 영상을 30fps로 재서 가져옴

## 이 레퍼런스에서 원하는 것 (비비 메모)
- 16:9 런칭 필름. 숏폼 · 썸네일 느낌 말고 실제 제품 런칭 수준
- 검정 배경에 은은한 점 격자와 빛. 글자는 작고(72~88px) SemiBold 단색, 여백이 넓음
- 제품 화면은 폰 프레임 안에서 카메라가 다가가거나 기울어짐
- 짧아도 인터랙션과 전환이 화려하고 무빙이 많음. 장면마다 UI 인터랙션(탭 · 스와이프 · 입력) 하나 (motion.md 반영 예정 — 하네스 첫 영상 피드백에서)

## 참고 메모
- 영상 공통 배경(docs/video.md 2장)은 snapcn Wall Cut의 공개 포스터 이미지를 참고했다 (거의 검정 바탕 + LED 점 격자 + 가장자리 푸른 빛). Wall Cut · Checkout Push는 snapcn Pro(유료) 컴포넌트라 소스는 받지 않았고, 수치도 가져오지 않았다.

## 사용 규칙
- art-director는 이 메모를 "가져올 것" 기준으로 쓴다. 값은 motion.md, 색 · 폰트는 design.md, 영상 룩은 docs/video.md에서만.
- 영상 파일을 프로젝트에 내려받지 않는다.
- Pro 컴포넌트는 소스를 받지 않고 구성만 참고한다.

## 측정 방법 — 움직이는 프레임
- 렌더 영상(1920×1080)은 그대로 두고, 잴 때만 폭 320으로 줄인다. 다른 크기로 재면 숫자가 달라진다.
- 프레임마다 앞 프레임과의 차이(YAVG)를 재고, **2.0을 넘는 프레임**을 '움직이는 프레임'으로 센다.
- 전체 프레임 대비 비율이 게이트 기준(35% 이상)과 비교할 값이다. 장면별 비율도 같이 적는다.

```
ffmpeg -i <영상.mp4> -vf "scale=320:-1,tblend=all_mode=difference,signalstats,metadata=print:key=lavfi.signalstats.YAVG:file=-" -f null -
```
