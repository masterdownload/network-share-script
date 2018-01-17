REM This scipt is to reconnect network drive(s) that Steam apps are located after a reboot in windows client. 
REM requirements for this script. 1) test.txt at the root of the share location. 2) drive mapped with correct permissions 3)Steam auto start disabled 4) this script configured in a scheduled task

IF EXIST "G:\test.txt" (
    ECHO share found
	timeout 3
	cd "D:\Program Files (x86)\Steam\"
	start steam.exe\
	exit
) ELSE (
    ECHO share not found connecting drive
	start /min explorer G:
	timeout 3 
	taskkill /im explorer.exe

)