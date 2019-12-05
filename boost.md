boost_1_70_0\tools\build\src\engine\build.bat
boost_1_70_0\tools\build\src\engine\config_toolset.bat
boost_1_70_0\tools\build\src\engine\guess_toolset.bat
boost_1_70_0\tools\build\src\engine\vswhere_usability_wrapper.cmd

SET(Boost_DEBUG ON)

https://www.boost.org/doc/libs/1_42_0/more/getting_started/unix-variants.html#library-naming

b2 option: --layout=versionned,tagged,system : to modify the naming convention

log namespace (voir aussi macos_compilation)
https://www.boost.org/doc/libs/1_58_0/libs/log/doc/html/log/rationale/namespace_mangling.html

CMake and boost versions
https://gitlab.kitware.com/cmake/cmake/issues/19402

https://stackoverflow.com/questions/42123509/cmake-finds-boost-but-the-imported-targets-not-available-for-boost-version
