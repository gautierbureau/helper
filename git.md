Default gui in git
``` bash
$> dnf install git-gui
```

Interactive add to select par of a file, type ? for help on every option:
``` bash
$> git add -p
$> git gui
```

On Github you can downlaod pull request branches to test them locally:
```
[remote "origin"]
url = git@github.com:gautier/helper.git
fetch = +refs/heads/*:refs/remotes/origin/*
fetch = +refs/pull/*/head:refs/remotes/origin/pr/*
fetch = +refs/pull/*/merge:refs/gh-merge/remotes/origin/*
```

To select a particular pull request
``` bash
$> git fetch origin refs/pull/NUMBER/head:refs/remotes/origin/pr/NUMBER
$> git fetch origin refs/pull/NUMBER/merge:test_merge
```

See all remote branches
``` bash
$> git ls-remote origin
```

See all local branches
``` bash
git show-ref --head --dereference
```

Squash, after s on commit and p on first commit we want to squash in
``` bash
$> git rebase -i 15ad3fac94b9fda06c3fc4acfbf8220f5e93e461
```
