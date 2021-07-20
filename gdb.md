Commands
``` bash
$ catch throw
$ catch catch
$ catch exception
$ catch assert
$ break abort
$ break __assert_fail
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
[Gdbinit](https://github.com/gdbinit/Gdbinit)

[cgdb](https://github.com/cgdb/cgdb)
[Voltron](https://github.com/snare/voltron)

[Breakpoints](http://www.unknownroad.com/rtfm/gdbtut/gdbbreak.html)
[Breakpoints](https://sourceware.org/gdb/onlinedocs/gdb/Set-Breaks.html)
[Catchpoints](https://sourceware.org/gdb/onlinedocs/gdb/Set-Catchpoints.html)

https://stackoverflow.com/questions/2443135/how-do-i-find-where-an-exception-was-thrown-in-c

See currents library loaded :
``` bash
$ info symbol DYN::Timers::getInstance
```

See NixNote

## Conditions

$_streq(voltageLevelIIDM.getId().c_str(), "Test") : in Clion no if
