# zsh conf

## Enable * wildcard

在zsh中使用`grep key --include=*.c` 的时候会出现`zsh: no matches found`, 在缺省的情况下，zsh 始终自动解释 `*`, 
在 `~/.zshrc` 中加入如下配置：

```bash
# pass * to cmd
setopt no_nomatch
```

## Reference

- [linux 解决"zsh: no matches found"](https://blog.csdn.net/qq_36148847/article/details/79260745)
