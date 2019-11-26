Version numbering: [Wiki](https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B), [other](https://stackoverflow.com/questions/31885337/what-compiler-is-in-visual-studio-2015)

Visual Studio, MSVC++ and cl have different version numbers. There's the branded version (printed on the box), the internal version (displayed in the About dialog box), and the compiler version (displayed by cl.exe and the _MSC_VER macro).

Par exemple: 
- MSVC++ 14.23, link -version ou nmake -version, (donne msvc 142 pour boost)
- _MSC_VER == 1923, cl -version
- Visual Studio 2019 Version 16.3, MSBuild -version

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" /help

MS: Microsoft 
VC: Visual C++
CRT: C Runtime

MT: Manifest Tool

Links: /MD /MDd, /MT, /MTd, /MP (Multiple Processes)
M pour multithreaded module, D Dynamic
vcruntime<version>.dll

Linker flags: /LD, LDd : equivalent of -shared to create a DLL

Only C++ tools: [link](https://visualstudio.microsoft.com/fr/visual-cpp-build-tools)

VS Redistributable: C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Redist\MSVC\14.23.27820\

"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe"

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat"

"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=vs-2019

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

vs_community.exe --layout D:\Packages\vslayout --add Microsoft.VisualStudio.Workload.NativeDesktop --includeRecommended --lang en-US
d:\Packages\vslayout\vs_community.exe --add Microsoft.VisualStudio.Workload.NativeDesktop --includeRecommended

MSBuild.exe
link.exe
cl.exe
devenv.exe
https://docs.microsoft.com/en-us/cpp/build/reference/c-cpp-build-tools?view=vs-2019

MSBuild c++
https://docs.microsoft.com/en-us/cpp/build/walkthrough-using-msbuild-to-create-a-visual-cpp-project?view=vs-2019

"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe"
