@title ssexev0.3
@echo off
echo Ending Running Steam Tasks...
taskkill /f /im SteamService.exe
taskkill /f /im hl1.exe
taskkill /f /im steamwebhelper.exe
taskkill /f /im hl2.exe
taskkill /f /im Steam.exe
echo Running Steam Tasks Have Been Ended.
echo Clearing Local Drives USN Journal. It Shows What Files Have Been Recently opened
FSUTIL USN DELETEJOURNAL /D C:
cd\
C:
echo Clearing Steam Logs
cd C:\Program Files (x86)\Steam
del /s /q \Steam\appcache\Steam.log
echo Clearing Steam Config
del /S /Q "C:\Program Files (x86)\Steam\config"
echo Clearing AppUpdateStatus
del /S /q "C:\Program Files (x86)\Steam\AppUpdateStats.blob"
echo Clearing GameOverlayUI To Trigger A Refresh
del /S /q "C:\Program Files (x86)\Steam\GameOverlayRenderer.log"
del /S /q "C:\Program Files (x86)\Steam\GameOverlayUI.exe.log"
del /S /q "C:\Program Files (x86)\Steam\streaming_client.exe"
del /S /q "C:\Program Files (x86)\Steam\WriteMiniDump.exe"
echo Clearing debug log
del /S /q "C:\Program Files (x86)\Steam\debug.log"
echo Changing Current Dir to C:\Program Files (x86)\Steam
cd C:\Program Files (x86)\Steam
del /Q *.log
del /Q *.log.old
echo Clearing Minidumps
del /Q *.mdmp
echo Clearing ClientRegBlob
del ClientRegistry.blob
echo Changing Dir to C:
cd ..
cd ..
echo Reclearing USN journal
FSUTIL USN DELETEJOURNAL /D C:
echo Flushing DNS Because VAC Inspects It
ipconfig /flushdns
echo Your Steam Has Been Cleaned. You Can Now Switch To Your Alt Or Main
pause
exit