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

## log examples

https://www.boost.org/doc/libs/1_63_0/libs/log/doc/html/log/tutorial/sources.html
https://www.boost.org/doc/libs/1_63_0/libs/log/doc/html/log/tutorial/sinks.html
https://www.boost.org/doc/libs/1_63_0/libs/log/doc/html/log/detailed/sources.html#log.detailed.sources.severity_level_logger

## log

boost/log/core/core.hpp : static core_ptr get();
libs/log/src/core.cpp : return implementation::get();

implementation : core.cpp :
struct core::implementation : public log::aux::lazy_singleton<implementation, core_ptr>

l'implem du core est un singleton.

lazy_singleton : boost/log/detail/singleton.hpp
Dans le singleton on spécialise Storage avec un pointeur. D'où en dessous on peut faire reset sur l'instance.

In core.cpp
//! The function initializes the logging system
static void init_instance()
{
    base_type::get_instance().reset(new core());
}

le implementation::get() est celui du lazy_singleton (qui appelle le init_instance qu'on a surchargé):
//! Returns the singleton instance
static StorageT& get()
{
    BOOST_LOG_ONCE_BLOCK()
    {
        DerivedT::init_instance();
    }
    return get_instance();
}

http://www.yolinux.com/TUTORIALS/C++Singleton.html
