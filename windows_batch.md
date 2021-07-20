Commands are not case sensitive.

[List](https://windows.developpez.com/cours/ligne-commande/?page=page_4)

```
> start C:\Windows\System32\cmd.exe
> start . :: Start File Explorer
```

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

Difference & and && : l'un execute la suite meme si le processus d'avant à échouer et pas l'autre.

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

Disques réseaux
```
> net use
> net use z: \\10.10.10.10
> net use z: /delete
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

Netbios
```
nbtstat -n
```

AD
```
> net user /domain USER_NAME
> net group GROUPE_NAME /domain

> gpresult /V
> gpresult /R

> whoami /groups
```

Set default path [here](https://www.java.com/fr/download/help/path.xml)

Change launch path of cmd [here](https://community.spiceworks.com/how_to/123751-change-the-default-path-in-the-command-prompt)

**Super + R**: cmd, taskmgr, control, compmgmt.msc, iexplore, notepad, mstsc (remote desktop connection), explorer, services, msinfo32

**Super + I**: Windows Settings

**Super + E**: File explorer

Path for startup of cmd:
Clic droit, Plus, Emplacement du fichier

Clic droit, Propriétés, Démarrer dans

Password manager
```
rundll32.exe keymgr.dll,KRShowKeyMgr
```

## MSI on Server

I run in some trouble to install a msi on windows server, i had to open terminal with admin privileges

```
> msiexec /a package.msi
> msiexec /i package.msi
```

https://social.technet.microsoft.com/Forums/windows/en-US/64af2d23-e45c-413f-bf1b-5ea7c9d52abd/why-as-an-admin-can-i-not-install-a-msi-package-on-windows-server-2008-r2?forum=winservergen

Path short form: dir /x, bureau~1 equivalent à bureaugau

rd /s "\\?\D:\Users\bureaugau\build-third"

## Windows Credential Manager

```
> rundll32.exe keymgr.dll,KRShowKeyMgr
```
