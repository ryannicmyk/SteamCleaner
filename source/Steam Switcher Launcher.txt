@title Steam Switcher Launcher V0.3
@rem for clearing steam cache
@rem use it all you want, find the latest version at github.com/lleijaxyz
@echo off
echo This Program Will End All Steam Programs And Attempt To Clean The Cache.
echo To Use This Program You Will Need Admin On Your PC or Know The Admin password
echo This is because Some Tools like flushdns and USN require Admin 
echo Do You Wish To Proceede
pause
set OLDDIR=%CD%
cd %CD%
set SSLOCATION=%CD%\ssexe.cmd
sudo %SSLOCATION%
pause