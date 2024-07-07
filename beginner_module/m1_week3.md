# Exercise 6 (Git)

### Task: You already have Github account, aso setup a GitLab account if you don’t have one already. You already have a altschool-cloud-exercises project, clone the project to your local system. Setup your name and email in Git’s global config

*Instruction:*
* Submit the output of:
```
git config -l
git remote -v
git log
```

*Solution:*
* output of git config -l
```
$ git config -l
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=C:/Program Files/Git/mingw64/etc/ssl/certs/ca-bundle.crt
core.autocrlf=true
core.fscache=true
core.symlinks=false
core.fsmonitor=true
core.editor="C:\\Program Files\\Microsoft VS Code\\bin\\code" --wait
pull.rebase=false
credential.helper=manager
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=main
user.email=peteroyelegbin@gmail.com
user.name=Peter Oyelegbin
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true
remote.origin.url=https://github.com/PeterOyelegbin/3mtt-altschool.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main
(END)
```

* output of git remote -v 
```
$ git remote -v
origin  https://github.com/PeterOyelegbin/3mtt-altschool.git (fetch)
origin  https://github.com/PeterOyelegbin/3mtt-altschool.git (push)
```

* output of git log
```
$ git log
commit 8672044ac2fb2e3c283b9abb5eb5d0a9c79841bd
Author: Peter Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 12:45:38 2024 +0100

    add week 2 task

commit b916b733fd445a118bf04a70d4ae4df6c13fc339
Author: Peter Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 12:28:02 2024 +0100

    update week 1 task

commit c183875f6b0ffcfe60536a77998b87ca1f9a57e2
Author: Peter Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 12:24:00 2024 +0100

    update week 1 task

commit e04f5fdc0f2dcdc1b0e7190310697b8c3299c7f2
Author: Peter Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 12:06:06 2024 +0100

    add week 1 task

commit 07f58c07eb3b2bea135fd6c19da364688cb9c314
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 12:03:20 2024 +0100

    Update week1_task1.md

commit 63f9504a7cea508f01d49387f8fd236613f5f52d
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 11:50:21 2024 +0100

    Update week1_task1.md

commit f1541575eb7cc2496d6fce9dabb6bb8912c030ae
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 11:49:54 2024 +0100

    Update week1_task1.md

commit 29d0b13ee1fb4fa73689e57ab3bef6e79f2a1ba0
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 11:49:01 2024 +0100

    Update week1_task1.md

commit fa5a658be830f5fe8669077d73173c3070db42dc
Author: Peter Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 11:47:11 2024 +0100

    add solution to exercise 1

commit 897bfcc8dc505721e2d5261bee4b4f71b35fd605
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 10:35:40 2024 +0100

    Update README.md

commit 71528c7df7e0247db08c445e0fbae58d73b3fbcd
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 10:35:13 2024 +0100

    Update README.md

commit 0f7d6a6d3a402fcac15e4e475ceb62a50b2d0114
Author: Peter T. Oyelegbin <peteroyelegbin@gmail.com>
Date:   Sun Jan 21 10:34:07 2024 +0100

    Initial commit
(END)
```
