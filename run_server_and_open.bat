@echo off
:: 1. 원하는 폴더로 이동
::cd /d C:\25_IDRAS\IDRAS_DMC_2ND_HTML

:: 2. 파이썬 웹서버 실행 (새 창에서 실행)
start cmd /k "python -m http.server 8080"

:: 3. 1초(1000ms) 대기 (서버가 바로 안 뜨는 경우 대비)
timeout /t 1 >nul

:: 4. 크롬 브라우저로 자동 접속 (기본 크롬 경로 기준, 설치 위치에 따라 다를 수 있음)
start chrome http://localhost:8080/index.html

:: 5. 배치파일 창 종료
exit
