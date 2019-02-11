echo “" | g++ -std=c++98 -dM -E -x c++ - | cut -d ' ' -f 2-3 | sed 's/^/-D/g' | tr '\n' ' '
