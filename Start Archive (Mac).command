#!/bin/bash
# Double-click this to run the Digital Archive locally.
cd "$(dirname "$0")" || exit 1
PORT=8000
URL="http://localhost:$PORT/"
echo "======================================================"
echo "  Digital Archive — local server"
echo "======================================================"
echo "  Opening: $URL"
echo
echo "  KEEP THIS WINDOW OPEN while using the archive."
echo "  To stop: close this window or press Ctrl+C."
echo "======================================================"
echo
( sleep 1; open "$URL" 2>/dev/null ) &
if command -v python3 >/dev/null 2>&1; then exec python3 -m http.server $PORT
else exec python -m http.server $PORT; fi
