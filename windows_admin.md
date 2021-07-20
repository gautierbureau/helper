Menus:
- Windows Administrative Tools
- System Tools

Task Scheduler: dans les services
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule /F /V Start /T REG_DWORD /D 2
https://www.winhelponline.com/blog/task-scheduler-service-grayed-out-windows/
https://www.sysnative.com/forums/threads/windows-task-scheduler-service-is-disabled-can-not-be-started.9108/

regsvr32  C:\Windows\System32\jscript.dll
