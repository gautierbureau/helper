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

Properties values : https://cmake.org/cmake/help/latest/manual/cmake-properties.7.html#target-properties

Commands
```
$> cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -B build -S . -DCMAKE_INSTALL_PREFIX=install
$> cmake --build build
$> cmake --build build --target install # equivalent of make install
$> cmake --install build # CMake 3.15+ only
```

The install() command generates a file, cmake_install.cmake, inside the build directory, which is used internally by the generated install target and by CPack. You can also invoke this script manually with cmake -P.

Create relocatable packages

https://cmake.org/cmake/help/v3.3/manual/cmake-packages.7.html#creating-relocatable-packages

Attention à:
- TARGET_INCLUDE_DIRECTORIES avec PUBLIC ou INTERFACE et des chemins en dur du style ${SUNDIALS_INCLUDE_DIR} et non pas des targets
- TARGET_LINK_LIBRARIES idem
- INSTALL avec DESTINATION et des paths absolus, il faut juste mettre ${INCLUDEDIR_NAME} (include) par exemple qui sera lui préposé par CMAKE_INSTALL_PREFIX

https://cmake.org/pipermail/cmake/2016-May/063400.html : explanation on PUBLIC PRIVATE INTERFACE for target_link_libraries and differences for shared and static libs.

https://cmake.org/cmake/help/latest/manual/cmake-buildsystem.7.html#transitive-usage-requirements

-DCMAKE_BUILD_TYPE=
-DCMAKE_INSTALL_PREFIX=
-DBUILD_SHARED_LIBS=

cmake -D
cmake -L to see options
cmake --trace-source="filename" --trace-expand

execute_process(

try_compile / try_run

https://cliutils.gitlab.io/modern-cmake/modern-cmake.pdf

https://gitlab.kitware.com/cmake/community/wikis/doc/cpack/PackageGenerators

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

CMAKE_PREFIX_PATH : priorité sur les modules internes de cmake
Ex pour trouver boost avec les cmake files installés par la version que j'ai compilé : set(CMAKE_PREFIX_PATH ${BOOST_ROOT}), et ça va trouver les fichiers de config dans lib/cmake.
Pour dlfcnwin32, set(CMAKE_PREFIX_PATH ${DYNAWO_THIRD_PARTY_DIR}/dlfcnwin32) trouve dans share/dlfcn-win32, dlfcn-win32 est le nom du package, find_package(dlfcn-win32)
Dans dynawo-rte :
-DCMAKE_MODULE_PATH=$DYNAWO_HOME/share/cmake \
"-DCMAKE_PREFIX_PATH=$DYNAWO_LIBXML_HOME;$DYNAWO_LIBIIDM_HOME;$DYNAWO_HOME/share" \
CMAKE_MODULE_PATH : empty by default, pour les fichiers FindXXX.cmake
CMAKE_PREFIX_PATH : empty by default, complète automatiquement avec bin, lib, include, share selon find_package, find_library etc...
Au moment du finc_package on peut ajouter des dossiers
https://cmake.org/cmake/help/latest/command/find_package.html#search-procedure
https://cmake.org/cmake/help/latest/manual/cmake-developer.7.html#find-modules

Pour les libs :
Generally, a dependency should be specified in a use of target_link_libraries() with the PRIVATE keyword if it is used by only the implementation of a library, and not in the header files. If a dependency is additionally used in the header files of a library (e.g. for class inheritance), then it should be specified as a PUBLIC dependency. A dependency which is not used by the implementation of a library, but only by its headers should be specified as an INTERFACE dependency.

Pour les headers
When A links in B as *PRIVATE*, it is saying that A uses B in its
implementation, but B is not used in any part of A's public API. Any code
that makes calls into A would not need to refer directly to anything from B

When A links in B as *INTERFACE*, it is saying that A does not use B
in its implementation, but B is used in A's public API.

When A links in B as *PUBLIC*, it is essentially a combination of
PRIVATE and INTERFACE. It says that A uses B in its implementation and B is
also used in A's public API.

## Debug cmake generator expression

get_property(toto TARGET libZIP::libZIP PROPERTY INTERFACE_LINK_LIBRARIES)
    message("toto ${toto}")
    add_custom_target(genexdebug COMMAND ${CMAKE_COMMAND} -E echo ${toto})

file(GENERATE OUTPUT absolute_path CONTENT $<...>)
add_custom_target(genexdebug COMMAND ${CMAKE_COMMAND} -E echo $<...>)

##

add_link_options(LINKER:--no-undefined)

## Generator expressions

-DCMAKE_C_FLAGS_INIT:STRING=$<$<BOOL:${UNIX}>:-fPIC>
$<BOOL:${BUILD_SHARED_LIBS}>
$<$<BOOL:${UNIX}>:-w -fPIC -O3>"
$<IF:$<CONFIG:Debug>,debug,release>
$<IF:$<BOOL:${BUILD_SHARED_LIBS}>,shared,static>
$<IF:$<BOOL:${BUILD_SHARED_LIBS}>,shared,$<IF:$<BOOL:${MSVC_STATIC_RUNTIME_LIBRARY}>,static,shared>>
$<IF:$<CONFIG:Release>,-O3,-O0>"
$<IF:$<BOOL:${BUILD_SHARED_LIBS}>,--disable-static,--enable-static>
$<NOT:$<BOOL:${BUILD_SHARED_LIBS}>>
$<$<NOT:$<BOOL:${BUILD_SHARED_LIBS}>>:-fPIC>


https://gitlab.kitware.com/cmake/community/wikis/doc/tutorials/How-To-Write-Platform-Checks

https://gitlab.kitware.com/cmake/community/wikis/doc/cmake/Useful-Variables

