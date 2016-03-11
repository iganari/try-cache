#!/bin/bash

# difie Directory

basename=$(cd `dirname $0`; pwd)

# stop unnecessary service
service NetworkManager stop
service iptables stop
service ip6tables stop
service kdump stop


# cancel unnecessary autostart
chkconfig iptables off
chkconfig ip6tables off


# remove unnecessary autostart
yum remove NetworkManager -y 


# upgrade centos
yum upgrade -y
yum update bash -y


# Installation of basic commands
yum install -y vim wget openssl openssl-devel tree telnet nkf mlocate expect ntp dstat


# Downloading and installing third-repository
yum install yum-plugin-priorities -y
yum install epel-release -y
cd /tmp
wget  http://rpms.famillecollet.com/enterprise/remi-release-6.rpm http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm -ivh *.rpm

# Rewriting of Priority
cp -a /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.org
sed -i "s/enabled=1/enabled=0/g" /etc/yum.repos.d/epel.repo
sed -i "s/enabled = 1/enabled = 0/g" /etc/yum.repos.d/rpmforge.repo
sed -i "19i\enabled = 1" /etc/yum.repos.d/CentOS-Base.repo
sed -i "28i\enabled = 1" /etc/yum.repos.d/CentOS-Base.repo
sed -i "37i\enabled = 1" /etc/yum.repos.d/CentOS-Base.repo

# update third-repository
yum --enablerepo=epel update epel-release -y 
yum --enablerepo=remi update remi-release -y 
yum --enablerepo=rpmforge update rpmforge-release -y 

# Installation of basic commands from rpm
yum install --enablerepo=epel tig iftop htop -y

# setting date
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

### # settinf ntpd service
### cp ${basename}/source/ntp.conf /etc/
### chmod 644 /etc/ntp.conf
service ntpd restart
chkconfig ntpd on


# disable the ipv6
echo "# ipv6 disable                        " >> /etc/sysctl.conf 
echo "net.ipv6.conf.all.disable_ipv6 = 1    " >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf



# modify SELinux
sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config

# bash color custom
echo 'export PS1="\[\033[1;34m\][\t][\u@\h \W]\\$\[\033[0m\] "' >> /etc/profile
