@echo off
cd /d "%~dp0"
where node >nul 2>nul
if not errorlevel 1 (
  start "" http://127.0.0.1:4174
  node server.cjs
) else (
  if exist "%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe" (
    start "" http://127.0.0.1:4174
    "%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe" server.cjs
  ) else (
    echo Install Node.js, then run this file again.
    pause
  )
)
