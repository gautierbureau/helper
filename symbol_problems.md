`objdump -T /local/partage/install/boost_1_59_0/lib/libboost_program_options.so | c++filt | grep "__throw_out_of_range"``

```
0000000000000000      DF *UND*	0000000000000000  GLIBCXX_3.4 std::__throw_out_of_range(char const*)
0000000000000000      DF *UND*	0000000000000000  GLIBCXX_3.4.20 std::__throw_out_of_range_fmt(char const*, ...)

objdump -T install/gcc4.4.7/master/Release-cxx11/shared/dynawo/lib/libdynawo_API_JOB.so | c++filt | grep _List_node_base

0000000000000000      DF *UND*	0000000000000000  GLIBCXX_3.4 std::_List_node_base::hook(std::_List_node_base*)
0000000000000000      DF *UND*	0000000000000000  GLIBCXX_3.4.15 std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)


objdump -T /lib64/libstdc++.so.6 | c++filt | grep "_List_node_base::_M_hook"

objdump -T /usr/lib/libstdc++.so.6 | grep _List_node_base | c++filt | grep hook

objdump -T lib.so | grep GLIBC 

/bin/ld: libdynawo_Common.so.0.1.1: No symbol version section for versioned symbol `pthread_rwlock_rdlock@GLIBC_2.2.5'
 objdump -T /lib64/libc.so.6 | grep pthread


 readelf -Ws /lib64/libstdc++.so.6.0.24 | c++filt | grep hook
 ```

`__tls_get_addr@@GLIBC_2.3`


##

```
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_program_options.so.1.59.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_API_JOB.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/extraLibs/LIBZIP/lib/libzip.so.1)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/LIBIIDM/lib/libiidm-ext-currentlimitsperseason-xml.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/LIBIIDM/lib/libiidm-ext-connectableposition-xml.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/LIBIIDM/lib/libiidm-xml.so.0.2)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/LIBIIDM/lib/libiidm.so.0.2)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/lib/libdynawo_ModelerCommon.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_ModelerCommon.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_API_PAR.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_API_CRV.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_API_FS.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_API_EXTVAR.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_API_DYD.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/LIBXML/lib/libXMLSAXParser.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/lib/libdynawo_Common.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/lib/libdynawo_Common.so.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_filesystem.so.1.59.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_log.so.1.59.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_log.so.1.59.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_date_time.so.1.59.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_regex.so.1.59.0)
/tmp/shared/bin//dynawo: /usr/lib64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /tmp/shared/extraLibs/BOOST/lib/libboost_regex.so.1.59.0)
```

https://docs.hunter.sh/en/latest/packages.html
