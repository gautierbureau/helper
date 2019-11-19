Env variables

```
LDFLAGS=
CXXFLASG=
CFLAGS=
CXX=
CC=
CMAKE_GENERATOR=
```

target_compile_options
target_compile_definitions and add_definitions
target_include_directories and include_directories
target_link_libraries and link_libraries
set_property
set_target_properties : cannot be used with cmake generator expression

Commands
```
$> cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -B build -S. -DCMAKE_INSTALL_PREFIX=install
$> cmake --build build
```

Create relocatable packages

https://cmake.org/cmake/help/v3.3/manual/cmake-packages.7.html#creating-relocatable-packages

Attention à:
- TARGET_INCLUDE_DIRECTORIES avec PUBLIC ou INTERFACE et des chemins en dur du style ${SUNDIALS_INCLUDE_DIR} et non pas des targets
- TARGET_LINK_LIBRARIES idem
- INSTALL avec DESTINATION et des paths absolus, il faut juste mettre ${INCLUDEDIR_NAME} (include) par exemple qui sera lui préposé par CMAKE_INSTALL_PREFIX

https://cmake.org/pipermail/cmake/2016-May/063400.html : explanation on PUBLIC PRIVATE INTERFACE for target_link_libraries and differences for shared and static libs.

https://cmake.org/cmake/help/latest/manual/cmake-buildsystem.7.html#transitive-usage-requirements
