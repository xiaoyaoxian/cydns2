#!/bin/bash
# @zyqf
# email:xiaoyaoxian007@gmail.com
# NOT run !
RUNPATH=`pwd`
echo '|-------------------Installing---------------------|' ;
echo '|install dnsmasq |' ;
echo '|Development Tools; About download size:60MB       |' ;
echo '|  PandaDNS Project : https://github.com/xiaoyaoxian/cydns2  |' ;
echo '|--------------------------------------------------|' ;
sudo apt-get install dnsmasq -y;

echo '|-------------------Configure----------------------|' ;
echo '|./configure --prefix=/usr/local/named ............|' ;
echo '|--------------------------------------------------|' ;

cp $RUNPATH/config/AD_hosts.txt /etc/AD_hosts.txt;
cp $RUNPATH/config/AD_list.conf /etc/AD_list.conf;
cp $RUNPATH/config/dnsmasq.conf /etc/Adnsmasq.conf;
cp $RUNPATH/config/SNI_list.conf /etc/SNI_list.conf;

echo '|-------------------Final setup--------------------|' ;
setenforce 0;
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config;


service dnsmasq restart && echo 'service is running!';
echo '|-------------------COMPLETE-----------------------|' ;
echo '|      The script was finish.Please Check!         |' ;
echo '|  PandaDNS Project : https://github.com/xiaoyaoxian/cydns2  |' ;
echo '|-------------------ENJOY IT!----------------------|' ;

echo '|USAG:| start:service dnsmasq start | stop:service dnsmasq stop ' ;


