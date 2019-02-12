Gcov launch example:
``` bash
gcov Test.cpp -o build/Test.cpp.gcno
```

gcovr and lcov are just two diffrents tools to have coverage results in html.

gcovr version 3.3 keeped \*.gcov files but version 4.x does not
``` bash
$> gcovr ${CMAKE_CURRENT_BINARY_DIR}/sources/ --root ${HOME_DIRECTORY}/sources/
   --html --html-details --output coverage/index.html
   --keep --object-directory coverage/reports
   --exclude=.*/test/.*
```

I then find a way to still get the .gcov files if the .gcda exists. The files are created in `pwd`
``` bash
cd build/coverage-sonar
for file in $(find build -name "*.gcno"); do
  cpp_file_name=$(basename $file .gcno)
  cpp_file=$(find sources -name "$cpp_file_name")
  gcov -pb $cpp_file -o $file > /dev/null
done
rm -f build/coverage-sonar/\#usr\#*
```

lcov example, it generates a coverage.info file in the end with all tests
``` bash
$> lcov --directory build/sources/test --gcov-tool /bin/gcov --capture --output-file build/coverage/coverage.info.MYTEST_unittest-tests
$> lcov --extract build/coverage/coverage.info.MYTEST_unittest-tests '*/sources/Solvers/Common/DYN*' --output-file build/coverage/coverage.info.MYTEST_unittest-tests.filtered
$> cat build/coverage/coverage.info.MYTEST_unittest-tests.filtered >> build/coverage/coverage.info
```
Instead of `--gcov-tool /bin/gcov` we can use `llvm-cov`

The you use genhtml to have the html output
``` bash
$> genhtml --no-function-coverage -o build/coverage build/coverage/coverage.info
```

Codecov working flow, either direclty in the CI env or through a Docker container and then you have to get the env variabkes defined by the CI frame through the container (very clever script using `echo -n "-e VAR"` to pass on `docker run` command line to pass env variables to container shell)
``` bash
$> ci_env=`bash <(curl -s https://codecov.io/env)`
$> bash <(curl -s https://codecov.io/bash) > /dev/null
$> docker exec $ci_env container_name bash -c "bash <(curl -s https://codecov.io/bash) > /dev/null"
```

Coverall working flow
``` bash
$> gem install coveralls-lcov
$> coveralls-lcov -t $COVERALLS_TOKEN build/coverage.info
$> docker exec -e $COVERALLS_TOKEN dynawo_travis_container bash -c "coveralls-lcov -t $COVERALLS_TOKEN build/coverage.info"
```
