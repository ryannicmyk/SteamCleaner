rem for clearing steam cache
rem use it all you want, find the latest version at github.com/lleijaxyz
@echo off
echo This Program Will End All Steam Programs And Attempt To Clean The Cache. 
echo Do You Wish To Proceede
pause
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
del /S /q \Steam\appcache\AppUpdateStats.blob
echo Clearing GameOverlayUI To Trigger A Refresh
del /S /q \Steam\appcache\GameOverlayRenderer.log
del /S /q \Steam\appcache\GameOverlayUI.exe.log
del /S /q \Steam\appcache\streaming_client.exe
del /S /q \Steam\appcache\WriteMiniDump.exe
echo Clearing debug log
del /S /q \Steam\appcache\debug.log
del /Q F logs
echo Clearing Minidumps
del /Q F *.mdmp
echo Clearing ClientRegBlob
del ClientRegistry.blob
echo Clearing appcache, config, userdata, dumps, logs
rmdir /S /Q "C:\Program Files (x86)\Steam\appcache"
rmdir /S /Q "C:\Program Files (x86)\Steam\config"
rmdir /S /Q "C:\Program Files (x86)\Steam\userdata"
rmdir /S /Q "C:\Program Files (x86)\Steam\dumps"
rmdir /S /Q "C:\Program Files (x86)\Steam\logs"
\
echo Reclearing USN journal
FSUTIL USN DELETEJOURNAL /D C:
echo Flushing DNS Because VAC Inspects It
ipconfig /flushdns
echo Your Steam Has Been Cleaned. You Can Now Switch To Your Alt Or Main
pause