Some tools in macos differs from their GNU counterpart, either some of them:

- getopt: only handles short arguments, [see](https://stackoverflow.com/questions/402377/using-getopts-to-process-long-and-short-command-line-options)
- `cp`: `cp folder/ to_folder` and `cp folder to_folder` are not the same, the trailing / selects all files hence copy each file in to_folder whereas with no / it creates folder into to_folder.
- `readlink -f`: does not exist on macos with the same behavior, only solution I found is to do `python -c "import os; print(os.path.realpath('$1'))"`
- /proc/cpuinfo: does not exist, `sysctl hw` is a solution to find info about cpus
- `ldd`: otool -L, otool -l, install_name_tool to handle rpath
- DYLD_LIBRARY_PATH: does not behave like LD_LIBRARY_PATH because on new OSX it is cleaned up at each child process created. A solution is to launch the process with explicit DYLD_LIBRARY_PATH call on the command line, `DYLD_LIBRARY_PATH=/mypath/ ./main`
- RPATH and others: [https://medium.com/@donblas/fun-with-rpath-otool-and-install-name-tool-e3e41ae86172](https://medium.com/@donblas/fun-with-rpath-otool-and-install-name-tool-e3e41ae86172)
- `wget`: `wget --no-check-certificate` with the version installed from sources
- `sed`: `sed -i` does not work `sed -i''` is the right call with the native sed
- `gdb --args`: `lldb --`

Linker problems:
- `-Wl,--no-whole-archive`: `-force_load`
- `-Wl,--start-group`: does not exist
- `-flat_namespace -undefined warning`: to allow undefined symbols in the dylib

Problems of `int64_t`: not sure about solution yet
- `g++ -m64`
- Include <stdint.h> or <inttypes.h> <cstdint>
- `int64_t` in macos is long long int and in gnu it is long int (if `__extensions` are not activated for gcc compiler)

ioreg

system_profiler
