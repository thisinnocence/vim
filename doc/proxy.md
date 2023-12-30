# Proxy

## v2RayN

v2RayN is a good proxy client tool. See:

<https://github.com/2dust/v2rayN>

Add the following alias in your bashrc or zshrc:

```bash
export host_ip=$(ip route | grep default | awk '{print $3}')

# check port on v2RayN status line 
export sock_port=10808
export http_port=10809

alias proxy='
    export HTTPS_PROXY="socks5://${host_ip}:${sock_port}";
    export HTTP_PROXY="socks5://${host_ip}:${sock_port}";
    echo "set proxy ok!"
    echo "  $HTTP_PROXY"
    echo "  $HTTPS_PROXY"
'
alias unproxy='
    unset HTTPS_PROXY;
    unset HTTP_PROXY;
    echo "unset proxy ok!"
'
```

## Reference

- <https://zhuanlan.zhihu.com/p/414627975>

