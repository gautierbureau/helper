Version numbering: [Wiki](https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B), [other](https://stackoverflow.com/questions/31885337/what-compiler-is-in-visual-studio-2015)

Visual Studio, MSVC++ and cl have different version numbers.

Only C++ tools: [link](https://visualstudio.microsoft.com/fr/visual-cpp-build-tools)

VS Redistributable: C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Redist\MSVC\14.23.27820\

"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe"

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat"

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

Please define _WIN32_WINNT or _WIN32_WINDOWS appropriately. For example:
- add -D_WIN32_WINNT=0x0601 to the compiler command line; or
- add _WIN32_WINNT=0x0601 to your project's Preprocessor Definitions.
Assuming _WIN32_WINNT=0x0601 (i.e. Windows 7 target).

https://stackoverflow.com/questions/2989810/which-cross-platform-preprocessor-defines-win32-or-win32-or-win32

https://docs.microsoft.com/fr-fr/cpp/build/reference/d-preprocessor-definitions?view=vs-2019

https://docs.microsoft.com/fr-fr/cpp/preprocessor/predefined-macros?view=vs-2019

https://docs.microsoft.com/fr-fr/windows/win32/winprog/using-the-windows-headers

https://docs.microsoft.com/en-us/cpp/porting/modifying-winver-and-win32-winnt?redirectedfrom=MSDN&view=vs-2019

C:/Program Files (x86)/Windows Kits/10/bin/10.0.18362.0/x64/mt.exe