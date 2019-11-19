https://www.howtogeek.com/370022/windows-registry-demystified-what-you-can-do-with-it/

reg query HKCU\Software\Kitware\Config\CMake /v FilesystemRetryCount = Number of tries
reg query HKCU\Software\Kitware\Config\CMake /v FilesystemRetryDelay = Delay in milliseconds between tries

reg add HKCU\Software\Kitware\CMake\Config
reg add HKCU\Software\Kitware\CMake\Config /v FilesystemRetryCount /t REG_DWORD /d 5
reg add HKCU\Software\Kitware\CMake\Config /v FilesystemRetryDelay /t REG_DWORD /d 100

https://gitlab.kitware.com/cmake/cmake/commit/7b1f966a6c456270004a2aec2c53057ca8efbac9

https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/reg-query

C:\Windows\System32\Config

regedit : pour éditer