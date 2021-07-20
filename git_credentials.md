git ls-remote https://devin-source.rte-france.com/simulations-tools/dynawo-rte.git -q
git credential-cache exit

sshpass -P Password -p MDP git ls-remote https://devin-source.rte-france.com/simulations-tools/dynawo-rte.git -q

git config --global credential.helper cache
git config --global credential.https://devin-source.rte-france.com.username NNI
git config --global credential.https://devin-source.rte-france.com.helper '!f() { test $1 = get && echo "password=MDP"; }; f'

git credential-cache exit
git config --global --unset credential.helper
git config --global --unset credential.https://devin-source.rte-france.com.username
git config --global --unset credential.https://devin-source.rte-france.com.helper
git config --global --remove-section credential
git config --global --remove-section credential.https://devin-source.rte-france.com

git credential fill
protocol=https
host=devin-source.rte-france.com
\n

expect -c 'spawn git ls-remote https://devin-source.rte-france.com/simulations-tools/dynawo-rte.git -q"; expect "Password:"; send "MDP\r"; interact'

## functions

``` bash
SH="echo $MDP | su - user 2> /dev/null"

exit_git() {
  eval $SH -c "\"git credential-cache exit\""
  eval $SH -c "\"git config --global --unset credential.helper\""
  eval $SH -c "\"git config --global --unset credential.https://devin-source.rte-france.com.username\""
  eval $SH -c "\"git config --global --unset credential.https://devin-source.rte-france.com.helper\""
  eval $SH -c "\"git config --global --remove-section credential\""
  eval $SH -c "\"git config --global --remove-section credential.https://devin-source.rte-france.com\""
}
```

``` bash
exit_git() {
  git credential-cache exit
  git config --global --unset credential.helper
  git config --global --unset credential.https://devin-source.rte-france.com.username
  git config --global --unset credential.https://devin-source.rte-france.com.helper
  git config --global --remove-section credential
  git config --global --remove-section credential.https://devin-source.rte-france.com
}
```
