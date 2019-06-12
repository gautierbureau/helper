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

Upstream and tracking
``` bash
$> git co -b new_test
$> git branch -u origin/test
$> git checkout -b test --track origin/test
$> git push -u origin new_test
```

Branch: create new master
``` bash
$> git br master-bis master
$> git br -c master master-bis
$> git co master: git co -b master-bis
```

Branch
``` bash
$> git br -v
$> git br -d
$> git br -a
$> git br -r
```

Branch rename (move)
``` bash
$> git br -m
```

Push
``` bash
$> git push origin dev:master
```

Pull : fetch+merge (warning with fast-forward or merge commit)
``` bash
$> git pull origin master:dev
$> git pull --rebase
$> git pull --ff-only
```

Reset, by default HEAD is implied at the end and `--mixed` is default option
``` bash
$> git reset --soft "HEAD^" # modifications go in index
$> git reset --hard # delete everything
$> git reset --mixed # modifications go in worktree
$> git reset --merge ORIG_HEAD # when there are merge conflict
```

Delete remote branch
``` bash
$> git push origin :<branch>
```

Fetch
``` bash
$> git fetch origin master:master
```

Remote
``` bash
$> git config --unset remote.origin.pushurl
$> git config remote.origin.url
$> git remote add new-remote https://gautierbureau@github.com/gautierbureau/TestGit.git
$> git config remote.origin.pushurl set-url https://tests.git
$> git remote rename origin github-origin
$> git remote -v
$> git remote show origin
```

Rm mv ls
``` bash
$> git rm --cached
$> git mv
$> git ls-files
```

HEAD
``` bash
$> cat .git/HEAD
```

Show
``` bash
$> git show —summary
$> git show --name-only  
$> git show --name-status
$> git show -p
$> git show -u
$> git show HEAD~1
$> git show sha1
$> git show sha1:Path/to/file
$> git show-branch master
```

Stash
``` bash
$> git stash show -p stash@{1}
$> git show stash@{1}:file.cpp
$> git stash save -p "TEXT"
$> git stash push -m "TEXT" file.cpp
```

``` bash
for file in `git stash show --name-only stash@{0}`; do
  git difftool master:$file stash@{0}:$file;
done
```

Config
``` bash
$> git config --list
```

Git objects
``` bash
$> git ls-tree -r HEAD
$> git cat-file -p HEAD
$> git ls-tree 977ce9fb3abb83f22efebcd856e1656290808d03
$> echo 'test content' | git hash-object —stdin
```

bisect, archive, blame, reflog, revert, gc, log, rev-parse, symbolic-ref, update-ref

All sha1 in `.git/logs/refs/heads`

Diff: git diff will show the difference between your workspace and the index.
- workspace vs repo: `git diff HEAD`
- to see index vs repos: `git diff --cached` (can also use `--staged`)
- to see workspace vs index: `git diff`

Vocabulary:
- Refs and reflogs: A^1 https://www.atlassian.com/git/tutorials/refs-and-the-reflog
- Working tree / worktree / working directory / workspace: state of current folders and files you see on your system
- Index / staging area / cache / directory cache / current directory cache / staged files: changes to be added in the next commit
- local repository / local database: state of current branch
- HEAD: tip of current commit, current branch or last committed state on current branch, HEAD pointer
- remote repository
- FETCH_HEAD is a short-lived ref, to keep track of what has just been fetched from the remote repository
- ORIG_HEAD: pull or merge always leaves the original tip of the current branch in ORIG_HEAD.
