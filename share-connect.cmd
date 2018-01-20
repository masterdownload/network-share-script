REM Script created by Masterdownload - 1/15/2018

REM This scipt is to reconnect network drive(s) that Steam apps are located after a reboot in windows client. 
REM requirements for this script. 
REM 1) test.txt at the root of the share location for steam. 
REM 2) drive letter has to be G: or updated in the script 
REM 3) Steam auto start disabled
REM 4) configure this script in a scheduled task to launch at startup

IF EXIST "G:\test.txt" (
    ECHO share found
	timeout 5
	cd "%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam"
	start steam
) ELSE (
    ECHO share not found connecting drive
	start /min explorer G:
	timeout 5
	taskkill /im explorer.exe
	cd "%HOMEPATH%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam"
	start steam
)