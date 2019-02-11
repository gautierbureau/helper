gcovr 
gcov
lcov

cd $DYNAWO_HOME/build/coverage-sonar
for file in $(find $DYNAWO_BUILD_DIR -name "*.gcno"); do
    cpp_file_name=$(basename $file .gcno)
    cpp_file=$(find $DYNAWO_HOME/dynawo/sources -name "$cpp_file_name")
    gcov -pb $cpp_file -o $file > /dev/null
done
rm -f $DYNAWO_HOME/build/coverage-sonar/\#usr\#*
