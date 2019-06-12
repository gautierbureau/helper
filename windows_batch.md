Commands are not case sensitive.

[List](https://windows.developpez.com/cours/ligne-commande/?page=page_4)

Chang disk
``` batch
> d:
```

Commands
``` batch
> cd C:\Users
> dir
> dir *.txt s/ b/
> path
> path=%path%;C:\Program Files\Oracle\VirtualBox
> echo %userprofile% %path%
> set foo=bar
> SomeCommand.exe || echo SomeCommand.exe failed with return code %errorlevel%
> SomeCommand.exe || EXIT /B 1
> ipconfig
> dir /b | sort
> dir myfile.txt > NUL 2>&1
> copy file dir/file
> del file.txt
> rename file.txt new_name.txt
> md directory
> rd directory
> rd /s /q directory
> powershell
> help
> more file.txt
> systeminfo
> tasklist
> notepad new.txt
> copy con new.txt
> del /s /q *
```

Git setup
``` batch
> mklink %userprofile%\.gitconfig %userprofile%\Config\gitconfig
> git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
> git config --global --edit
```

Help
``` batch
> dir /?
```

MSVC
``` batch
> cl /EHsc main.cpp
```

Scripts
``` batch
:: Comments
@echo off
setlocal
set var = 12
endlocal
echo %1
if exist "temp.txt" echo found
for %I in (%userprofile%\*) do @echo %I
call :function
```

Function
``` batch
:Display
SET /A index=2
echo The value of index is %index%
EXIT /B 0
```

Proxy script
``` batch
@echo off

set /p NNI="NNI: "
set "PASSWORD=powershell -Command "$password = read-host -AsSecureString 'Password'; ^
		[System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))""
for /f "usebackq delims=" %%p in (`%PASSWORD%`) do set PASSWORD=%%p

set "http_proxy=http://%NNI%:%PASSWORD%@ip:port"
set "https_proxy=http://%NNI%:%PASSWORD%@ip:port"
set no_proxy=domain.com

set NNI=
set PASSWORD=
```

Set default path [here](https://www.java.com/fr/download/help/path.xml)

Change launch path of cmd [here](https://community.spiceworks.com/how_to/123751-change-the-default-path-in-the-command-prompt)

**Super + R**: cmd, taskmgr, control, compmgmt.msc, iexplore, notepad, mstsc (remote desktop connection), explorer, services, msinfo32

**Super + I**: Windows Settings

**Super + E**: File explorer
