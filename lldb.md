https://stackoverflow.com/questions/8122375/lldb-breakpoint-on-exceptions-equivalent-of-gdbs-catch-throw

break set -E C++
break __cxa_throw
break set -F std::range_error 
