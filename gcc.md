Gcc full help:
``` bash
$> g++ -v --help
$> g++ --help=‘optimizers’
```

See default paths
``` bash
$> echo " " | gcc -x c -E -v -
$> echo " " | gcc -x c++ -E -v -
```

See default predefined macros:
``` bash
$> echo "" | g++ -std=c++98 -dM -E -x c++ -
$> echo "" | g++ -std=c++98 -dM -E -x c++ - | cut -d ' ' -f 2-3 | sed 's/^/-D/g' | tr '\n' ' '
```
`-dM` option will dump all predefined macros

`-dD` : Print macro definitions in -E mode in addition to normal output

`-dM `: Print macro definitions in -E mode instead of normal output

See default standard:
``` bash
$> g++ -dM -E -x c++ /dev/null | grep -F __cplusplus
$> echo __cplusplus | g++ -E -x c++ -c -
$> g++ -dumpspecs
$> man g++ | col -b | grep -B 1 -e '-std.* default'
$> strings /usr/lib64/libstdc++.so.6 | grep GLIBCXX
```

Delete all predefined macros:
``` bash
$> echo "" | g++ -undef -dM -E -x c++ -
```

- g++ -f : warning, flags also, Control the interface conventions used in code generation
- g++ -g : adds debugging information (variable names, line numbers etc) to the executable file. Debugging options
- g++ -m : m stands for mode,
- g++ -W : flags, warnings
- g++ -O : optimisation
- g++ -p : Generate extra code to write profile information suitable for the analysis program prof
- g++ -D : define macros
- g++ -M : Instead of outputting the result of preprocessing, output a rule suitable for make describing the dependencies of the main source file.
- g++ -H : Print the name of each header file used, in addition to other normal activities.
- g++ -L : for libraries
- g++ -I : for header files
- g++ -B : This option specifies where to find the executables, libraries, include files, and data files of the compiler itself.
- g++ -l : link libraries
- -x : langage
- -E : prints results to stdout instead of a file.
- -Wl,--start-group,...,--end-group : comma separated list of options to pass to linker
