@echo off
cd /d "%~dp0"
echo Digital Archive - local server at http://localhost:8000/
echo Keep this window open while using the archive. Close it to stop.
start "" http://localhost:8000/
py -m http.server 8000 2>nul || python -m http.server 8000
