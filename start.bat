@echo off
echo =======================================================================
echo          PROJECT VAKRA: DISASTER RESILIENCE PLATFORM
echo               (Valkyrie Adaptive Kinetic Resilience Architecture)
echo =======================================================================
echo [1/2] Launching Local Offline Command Center UI (Vite + React)...
start cmd.exe /c "npm.cmd run dev -- --host 127.0.0.1 --port 5173"
echo.
echo [2/2] Opening Browser on http://127.0.0.1:5173 ...
timeout /t 3 /nobreak >nul
start http://127.0.0.1:5173
echo.
echo VAKRA is running completely offline. Press Ctrl+C in terminal to stop.
echo =======================================================================
