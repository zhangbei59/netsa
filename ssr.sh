#!/bin/bash
#
#
#desc:the scripts to build a vpn server!

#安装python安装器和shadowscoks软件
yum install python-setuptools  -y
easy_install pip  
pip install shadowsocks 

#新增配置文件
touch /etc/shadowsocks.json
echo -e "{\t
    "server":"0.0.0.0",\t
    "server_port":10138,\t
    "local_address": "127.0.0.1",\t
    "local_port":1080,\t
    "password":"ilovebekey",\t
    "timeout":300,\t
    "method":"aes-256-cfb",\t
    "fast_open": false,\t
    "workers": \t  
}" >/etc/shadowsocks.json


#启动服务
nohup ssserver -c /etc/shadowsocks.json &
