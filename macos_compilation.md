``` bash
$> install_name_tool -add_rpath @loader_path/../lib mybinary
$> install_name_tool -change absolutePathForLib.dylib @rpath/libName.dylib mybinary
$> install_name_tool -delete_rpath absolutePath mybinary
$> install_name_tool -id absolutePathForLib.dylib @rpath/libName.dylib libName.dylib
```

[https://wincent.com/wiki/@executable_path,_@load_path_and_@rpath](https://wincent.com/wiki/@executable_path,_@load_path_and_@rpath)

https://medium.com/@donblas/fun-with-rpath-otool-and-install-name-tool-e3e41ae86172


https://gitlab.kitware.com/cmake/community/wikis/doc/cmake/RPATH-handling


https://gist.github.com/robertmaynard/5750737
