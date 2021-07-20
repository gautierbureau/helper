https://stackoverflow.com/questions/8122375/lldb-breakpoint-on-exceptions-equivalent-of-gdbs-catch-throw

break set -E C++
break __cxa_throw
break set -F std::range_error

process handle SIGSEGV --notify true --pass true --stop true
pr h -p true -n true -s false SIGSEGV

process handle SIGUSR2 -n true -p true -s false
pro hand -p true -s false SIGBUS
