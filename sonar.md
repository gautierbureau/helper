``` bash
mkdir -p $HOME/Library/sonar
wget https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip
unzip build-wrapper-linux-x86.zip -d $HOME/Library/sonar
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip
unzip sonar-scanner-cli-3.3.0.1492-linux.zip -d $HOME/Library/sonar
cp $HOME/Library/sonar/build-wrapper-linux-x86/libinterceptor-x86_64.so $HOME/Library/sonar/build-wrapper-linux-x86/libinterceptor-haswell.so
```

``` bash
$> export PATH=$HOME/Library/sonar/build-wrapper-linux-x86:$HOME/Library/sonar/sonar-scanner-3.3.0.1492-linux/bin:$PATH
$> strace -f -E LD_DEBUG=all build-wrapper-linux-x86-64 --out-dir bw-output2 /bin/echo test > stdout.txt 2>stderr.txt
$> build-wrapper-linux-x86-64 --out-dir bw-output ./build_sonar.sh
$> sonar-scanner
```
