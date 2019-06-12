``` bash
$> install_name_tool -add_rpath @loader_path/../lib mybinary
$> install_name_tool -change absolutePathForLib.dylib @rpath/libName.dylib mybinary
$> install_name_tool -delete_rpath absolutePath mybinary
$> install_name_tool -id absolutePathForLib.dylib @rpath/libName.dylib libName.dylib
```

[https://wincent.com/wiki/@executable_path,_@load_path_and_@rpath](https://wincent.com/wiki/@executable_path,_@load_path_and_@rpath)
