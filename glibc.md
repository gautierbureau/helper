https://stackoverflow.com/questions/9705660/check-glibc-version-for-a-particular-gcc-compiler

https://benohead.com/linux-check-glibc-version/

https://gist.github.com/likema/f5c04dad837d2f5068ae7a8860c180e7

http://ask.xmodulo.com/check-glibc-version-linux.html

https://stackoverflow.com/questions/2418157/c-error-undefined-reference-to-clock-gettime-and-clock-settime

https://stackoverflow.com/questions/9705660/check-glibc-version-for-a-particular-gcc-compiler

https://stackoverflow.com/questions/10354636/how-do-you-find-what-version-of-libstdc-library-is-installed-on-your-linux-mac

Pour trouver la compatibilité minimum entre glibc et gcc il faut:
- regarder les dates des release et les faire coincider
- regarder le fichier install de glibc qui précisé gcc normalement https://stackoverflow.com/questions/35873558/glibc-vs-gcc-vs-binutils-compatibility

Glibcxx doit faire pareil.


https://developers.redhat.com/blog/2019/08/01/how-the-gnu-c-library-handles-backward-compatibility/

https://gcc.gnu.org/onlinedocs/libstdc++/manual/abi.html

https://gcc.gnu.org/onlinedocs/libstdc++/manual/using_dual_abi.html
