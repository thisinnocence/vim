# Proxy

## v2RayN

v2RayN is a good proxy client tool. See:

<https://github.com/2dust/v2rayN>

Add the following alias in your bashrc or zshrc:

```bash
export host_ip=$(ip route | grep default | awk '{print $3}')

# check port on v2RayN status line 
export sock_port=10810
export http_port=10811

alias proxy='
    export HTTPS_PROXY="socks5://${host_ip}:${sock_port}";
    export HTTP_PROXY="socks5://${host_ip}:${sock_port}";
    echo -e "Acquire::http::Proxy \"http://${host_ip}:${http_port}\";" | sudo tee /etc/apt/apt.conf.d/proxy.conf > /dev/null;
    echo -e "Acquire::https::Proxy \"http://${host_ip}:${http_port}\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
    echo "set proxy ok!"
'
alias unproxy='
    unset HTTPS_PROXY;
    unset HTTP_PROXY;
    sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
    sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
    echo "unset proxy ok!"
'
```

## Reference

- <https://zhuanlan.zhihu.com/p/414627975>

