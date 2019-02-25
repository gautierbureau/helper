Commands
``` bash
$ catch throw
$ r
$ n
$ s
$ bt
$ up
$ down
$ p var
$ b DYNSimulation.cpp:620
$ b DYN:Simualtion::init()
$ b /home/gautier/Codes/test/Sim/Simulation.cpp
$ list
$ list DYN:Simualtion::init()
$ info locals
$ info registers
$ set environment MALLOC_CHECK_ 2
```

autocomplete works with absolute path for filename.

GUI
``` bash
$> gdb -tui ./main
$> kdbg ./main
$> pip install gdbgui
$> gdbgui ./main
```

[Quick Ref](http://beej.us/guide/bggdb/#qref)

[cgdb](https://github.com/cgdb/cgdb)
[Voltron](https://github.com/snare/voltron)

[Breakpoints](http://www.unknownroad.com/rtfm/gdbtut/gdbbreak.html)
[Breakpoints](https://sourceware.org/gdb/onlinedocs/gdb/Set-Breaks.html)