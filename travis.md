Script to emulate the checkout of Travis
``` bash
#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  BRANCH=$TRAVIS_BRANCH;
  GIT_COMMAND="git clone --depth=50 --branch=$BRANCH https://github.com/dynawo/dynawo.git dynawo"
  echo -n $GIT_COMMAND
else
  PULL_REQUEST_NUM=$TRAVIS_PULL_REQUEST;
  GIT_COMMAND="git clone --depth=50 https://github.com/dynawo/dynawo.git dynawo;cd dynawo;git fetch origin +refs/pull/$PULL_REQUEST_NUM/merge:;git checkout -qf FETCH_HEAD;"
  echo -n $GIT_COMMAND
fi
```

After several tries I did not figure out how to make work jobs and env matrix together: example of not working config

``` yaml
env:
  global:
    - FOO=foo
  matrix:
    - TOTO=toto
    - TOTO=tata

install:
  - dnf install package

script:
  - ./build.sh

jobs:
  include:
    - stage: "Tests coverage"
      env: BUILD_TYPE=Debug CXX11_ENABLED=YES
      script: ./tests.sh
```

Working config with two stages:
``` yaml
env:
  global:
    - FOO=foo

install:
  - dnf install package

stages:
  - build
  - tests

jobs:
  include:
    - stage: build
      env: BUILD_TYPE=Debug CXX11_ENABLED=YES
      script: ./build.sh
    - stage: build
      env: BUILD_TYPE=Debug CXX11_ENABLED=NO
      script: ./build.sh
    - stage: build
      env: BUILD_TYPE=Release CXX11_ENABLED=YES
      script: ./build.sh
    - stage: build
      env: BUILD_TYPE=Release CXX11_ENABLED=NO
      script: ./build.sh
    - stage: tests
      env: BUILD_TYPE=Debug CXX11_ENABLED=YES
      script: ./tests.sh
```

Valid a yaml
``` bash
$> gem install travis
$> travis lint .travis.yml
```
