[Link1](http://nickdesaulniers.github.io/blog/2016/11/20/static-and-dynamic-libraries/)
[Link2](http://nickdesaulniers.github.io/blog/2016/08/13/object-files-and-symbols/)
[link3](http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html)

[dlopen Tuto](http://www.tldp.org/HOWTO/C++-dlopen/thesolution.html)

dlopen does not goes well with singleton and static members when compiling in static some parts of the exec.
```
Object code location: Object code archive libraries can be located with either the executable or the loadable library. Object code routines used by both should not be duplicated in each. This is especially true for code which use static variables such as singleton classes. A static variable is global and thus can only be represented once. Including it twice will provide unexpected results. The programmer can specify that specific object code be linked with the executable by using linker commands which are passed on by the compiler.
```
