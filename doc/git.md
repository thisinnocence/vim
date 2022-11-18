# Git

## Add ssh-key

```bash
git config --global user.name "your_name"
git config --global user.email "your_email@example.com"
ssh-keygen -t rsa -C "your_email@example.com"
```

## Git config

```ini
[http]
    sslVerify = false
[https]
    sslVerify = false
[alias]
    b = branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate
    d = diff
    f = fetch
    l = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%an]" --decorate --date=short -12
    s = status
    br = branch -vv
    co = checkout
    cm = commit
    cane = commit --amend --no-edit
[diff]
    tool = vimdiff
[difftool]
    prompt = false
[core]
    editor = vim
[pager]
    diff = false
    branch = false
    log = false
```

## Reference

- <https://snyk.io/blog/10-git-aliases-for-faster-and-productive-git-workflow>
