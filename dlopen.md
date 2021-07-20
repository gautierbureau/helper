set(CMAKE_ENABLE_EXPORTS ON) : adds -rdynamic to the linker for exe, https://cmake.org/cmake/help/latest/policy/CMP0065.html

rdynamic : enables plugins to use the symbols of the exe to resolve its on external symbols, by default an exe is complete and so does not "expose" its symbol for future usage
It is very useful in case of dlopen use.

On mac I used a combination of -force_load dynawo_Util and -flat_namespace -undefined warning

on Linux, -Wl,--whole-archive dynawo_Util -Wl,--no-whole-archive

Linux dlopen : https://linux.die.net/man/3/dlopen
Mac dlopen : https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man3/dlopen.3.html

https://en.wikipedia.org/wiki/Dynamic_loading#In_C/C++

http://www.faqs.org/docs/Linux-mini/C++-dlopen.html#loadingclasses

## Plugin tutos

https://www.3dgep.com/using-dynamic-link-libraries-dll-to-create-plug-ins/

https://sourcey.com/articles/building-a-simple-cpp-cross-platform-plugin-system

## Static variables

https://stackoverflow.com/questions/19373061/what-happens-to-global-and-static-variables-in-a-shared-library-when-it-is-dynam

## Note on symbol loading

On Windows, unless you explicitly DLLEXPORT a function from the plugin, it remains internal. On Linux, the default is the opposite, and when two shared libraries export the same symbol, the first one loaded wins.

## Binary formats

ELF : Executable and Linkable Format, file format for executable files, object code, shared libraries, and core dumps. Part of the ABI, Application Binary Interface. On Linux. http://www.skyfree.org/linux/references/ELF_Format.pdf
PE : Portable executable, file format for executables, object code, DLLs, on Windows
Mach-O : file format for executables, object code, shared libraries, dynamically-loaded code, and core dumps on MacOS X

DSO Dynamic Shared Object (Linux) vs DLL Dynamic Link Library (Windows)

https://akkadia.org/drepper/dsohowto.pdf

## Other

vDSO (virtual dynamic shared object) is a Linux kernel mechanism for exporting a carefully selected set of kernel space routines to user space applications so that applications can call these kernel space routines in-process, without incurring the performance penalty of a mode switch from user to kernel mode that is inherent when calling these same kernel space routines by means of the system call interface

## Windows

dlfcn.h - windows.h
dl (libdl.so or libdl.dylib) - kernel32.dll
dlopen - LoadLibrary
dlsym - GetProcAddress
dlclose - FreeLibrary

To load symbols from the exe itself : void* this_process = dlopen(NULL,0); - GetModuleHandle(NULL)

## Links

https://stackoverflow.com/questions/17081131/how-can-a-shared-library-so-call-a-function-that-is-implemented-in-its-loadin

http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html

https://stackoverflow.com/questions/8623657/multiple-instances-of-singleton-across-shared-libraries-on-linux

https://stackoverflow.com/questions/36692315/what-exactly-does-rdynamic-do-and-when-exactly-is-it-needed

http://www.bnikolic.co.uk/blog/linux-ld-debug.html

https://stackoverflow.com/questions/17081131/how-can-a-shared-library-so-call-a-function-that-is-implemented-in-its-loadin

https://www.boost.org/doc/libs/1_64_0/doc/html/boost_dll/tutorial.html

https://github.com/bartgrantham/dynamic-libraries-in-c-and-cpp-article

https://stackoverflow.com/questions/17614172/c-template-singletons-in-a-dll

## Project example

https://pocoproject.org/slides/120-SharedLibraries.pdf
https://github.com/pocoproject/poco
