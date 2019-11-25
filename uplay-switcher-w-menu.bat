@echo off

TITLE Select uPlay account

taskkill.exe /F /IM upc.exe

cls
echo(
echo(
echo(
echo                                      Select your account
echo                            =======================================
echo(
echo 1) "Replace with a name you want to see in the window for your first account, e.g. Main"
echo 2) "Replace with a name you want to see in the window for your second account, e.g. Second"
echo(

CHOICE /M Select /C 12

If Errorlevel 2 Goto 2
If Errorlevel 1 Goto 1

:1
set username="Replace with your current windows 10 account username"
Goto end
:2
set username="Replace with the newly created windows 10 account username"
Goto end

:end

runas /user:%username% "C:\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\upc.exe"

exit