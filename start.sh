#!/usr/bin/env bash
echo "======================================================================="
echo "         PROJECT VAKRA: DISASTER RESILIENCE PLATFORM"
echo "              (Valkyrie Adaptive Kinetic Resilience Architecture)"
echo "======================================================================="
echo "[1/2] Launching Local Offline Command Center UI (Vite + React)..."
npm run dev -- --host 127.0.0.1 --port 5173 &
PID=$!
echo ""
echo "[2/2] Local web application available at http://127.0.0.1:5173"
echo "VAKRA is running completely offline. Press Ctrl+C to exit."
wait $PID
