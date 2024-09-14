@echo off

echo [Warning] Will taskkill Google Chrome
pause
taskkill /f /im chrome.exe

for /f "tokens=*" %%a in (download_list.txt) do (
  call %cd%\yt-dlp.exe %* %%a
)