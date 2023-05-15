#!/bin/bash
function metadata {
    echo "#############################################################"
    echo "#                                                           #"
    echo "#     All-in-one Script patcher by @yamano                  #"
    echo "#     Debian 10/11/12 and Ubuntu 20/21/22  32 & 64 bits     #"
    echo "#     Patcher version: 1.2-public                           #"
    echo "#                                                           #"
    echo "#############################################################"
}
function main {
    if [ "$(whoami)" != "root" ]; then
        metadata
        echo "#                                                           #"
        echo "#     You're not running the script as root user.           #"
        echo "#     Please run it as root or it will not work!            #"
        echo "#                                                           #"
        echo "#############################################################"
        exit
    fi
    metadata
    if command -v apt-get >/dev/null; then
        echo "#                                                           #"
        echo "#     Debian / Ubuntu system detected!                      #"
        echo "#                                                           #"
        echo "#############################################################"
    elif command -v yum >/dev/null; then
        echo "#                                                           #"
        echo "#     CentOS / Rocky Linux system detected!                 #"
        echo "#     This script is still not compatible with your system. #"
        echo "#     Please install a recommended system.                  #"
        echo "#                                                           #"
        echo "#############################################################"
        exit
    else
        echo "#                                                           #"
        echo "#     System not compatible. Install a recommended system!  #"
        echo "#                                                           #"
        echo "#############################################################"
        exit
    fi
    if [ `getconf LONG_BIT` = "64" ]; then
        echo "#                                                           #"
        echo "#     x64 system detected!                                  #"
        echo "#                                                           #"
        echo "#############################################################"
        echo "#                                                           #"
        echo "#     Downloading x64 install script...                     #"
        echo "#                                                           #"
        rm -f /root/installx64
        apt-get -qy install wget  
        wget -q https://tools.cyberlimbo.com/scripts/installx64 -P /root
        chmod 777 /root/installx64
        exec /root/installx64
    else
        echo "#                                                           #"
        echo "#     x86 system detected!                                  #"
        echo "#                                                           #"
        echo "#############################################################"
        echo "#                                                           #"
        echo "#     Downloading x86 install script...                     #"
        echo "#                                                           #"
        rm -f /root/installx86
        apt-get -qy install wget
        wget -q https://tools.cyberlimbo.com/scripts/installx86 -P /root
        chmod 777 /root/installx86
        exec /root/installx86
    fi
}
main
