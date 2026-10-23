# soural — iPhone 3D motion 프롬프트 (참고용만)
출처: @0xSoural https://x.com/0xSoural/status/2112533459604328479
"COPY-READY PROMPT / REPLACE [BRACKETED] FIELDS" — 복사해 쓰라고 공개한 프롬프트. 출처 표기.
결과물 · starter · 공통 조각에 이 문장을 넣지 않는다.

ROLE: You are a senior motion director. Ship a finished 24.5 s film, not a mood board.
HERO: [CHARACTER: Clawd, the Claude mascot] as voxels from a 14 x 8 pixel map.
One map per pose: stand, blink, squash, air-up, air-down. Every hop = anticipation,
arc, stretch, landing squash, contact shadow. One teal clone for contrast.
SET: [PHONE: an iPhone] lying on a cream studio floor (ECE7DD), black titanium,
glass screen. The real UI made physical: Dynamic Island, lock screen clock standing up
in 3D, every home screen icon a raised tile that squashes when he lands on it.
Real icons: [APPS: TikTok, X, YouTube, Instagram]. Wallpaper: [WALLPAPER: warm peach].
FORMAT: one HTML file, three.js 0.160.0, 1920x1080, 150 BPM, seamless loop.
Screen, icons and cards are canvas textures. window.renderAt(t) draws any frame.
Render at 4K on the GPU, 120 fps, then ffmpeg tmix=frames=2,fps=60 at 1080p.
BEATS (s):
0-1    screen asleep, wakes; the clock digits stand up out of the glass
1.6    the Dynamic Island swells and spits him out
2-4    hops across 9 : 4 1, each digit squashes, the 1 is a spring
5.2    lands on the camera button: shutter flash
6-7    runs up the screen = swipe to unlock, icons zoom in
7.6    app 1: a vertical feed card rises, two swipes, hearts
9.6    app 2: trampoline, a post card rises, views count to 1.2M
11     app 3: presses play, the progress bar starts
12.2   flies through the app 4 story ring, it turns into his avatar
13.2   "99+" badges flood every app; he splits into four, pops them on the beat
16.6   drop, wide shot, every app running. From the island a notification rises:
       "[CHARACTER] moved into your iPhone. He's not leaving."
20.8   cards fold back, the four dive into the island, icons out, screen off
CAMERA: one Catmull-Rom move, 30 mm look, bokeh on the target. Go above
the digits when he leaves the island so they never hide it.
SOUND: synthesize it from the same event times. Every landing is a note,
badges pop on the beat, the drop lands with the wide shot. Master to -11 LUFS.
CHECKS: a contact sheet of 18 stills before the full render. Fix, then render.