#!/bin/bash
if [ "$(whoami)" == "root" ] ; 
then
 echo "#############################################################"
 echo "#                                                           #"
 echo "#     All-in-one Script patcher by @yamano                  #"
 echo "#     Debian 8/9/10 and Ubuntu 18/19/20  32 & 64 bits       #"
 echo "#     Website: CyberLimbo.com                               #"
 echo "#     Email: support@cyberLimbo.com                         #"
 echo "#     Patcher version: 1.1-public                           #"
 echo "#                                                           #"
 echo "#############################################################"
 echo "#                                                           #"
 echo "#     Checking system architecture...                       #"
 echo "#                                                           #"
 echo "#############################################################"
else
 echo "#############################################################"
 echo "#                                                           #"
 echo "#     All-in-one Script patcher by @yamano                  #"
 echo "#     Debian 8/9/10 and Ubuntu 18/19/20  32 & 64 bits       #"
 echo "#     Website: CyberLimbo.com                               #"
 echo "#     Email: support@cyberLimbo.com                         #"
 echo "#     Patcher version: 1.1-public                           #"
 echo "#                                                           #" 
 echo "#############################################################"
 echo "#                                                           #"
 echo "#     You're not runnig the script as root user.            #"
 echo "#     Please run it as root or it will not work!            #" 
 echo "#                                                           #"
 echo "#############################################################"
exit
fi
if [ `getconf LONG_BIT` = "64" ] 
then
 echo "#                                                           #"
 echo "#     x64 system detected!                                  #"
 echo "#                                                           #"
 echo "#############################################################"
 echo "#                                                           #"
 echo "#     Downloading x64 patcher...                            #"
 echo "#                                                           #"
 rm -f /root/installx64
 apt-get install wget -y
 wget -q https://tools.cyberlimbo.com/scripts/installx64 -P /root
 chmod 777 /root/installx64
 exec /root/installx64
else
 echo "#                                                           #"
 echo "#     x86 system detected!                                  #"
 echo "#                                                           #"
 echo "#############################################################"
 echo "#                                                           #"
 echo "#     Downloading x86 patcher...                            #"
 echo "#                                                           #"
 rm -f /root/installx86
 apt-get install wget -y
 wget -q https://tools.cyberlimbo.com/scripts/installx86 -P /root
 chmod 777 /root/installx86
 exec /root/installx86
fi
exit
