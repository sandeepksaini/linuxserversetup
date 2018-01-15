#!/bin/bash
# Purpose: 
# 1) To install the preliminary package for the setup of the host server
# 2) The purpose of this shell script is to install and setup a RDP server and tiger vnc on CentOS machine.
# 2) Install git and configure it

#Install using yum package installer
for package_list in bash-completion fish screen epel; 
do 
 yum install ${package_list} -y
done

function rdp_setup() 
{
yum install firewalld -y
yum -y install epel-release && rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
yum install xrdp tigervnc-server
systemctl start firewalld
firewall-cmd --permanent --zone=public --add-port=3389/tcp
firewall-cmd --reload
chcon --type=bin_t /usr/sbin/xrdp
chcon --type=bin_t /usr/sbin/xrdp-sesman 
systemctl start xrdp.service
systemctl enable xrdp.service
}

function git_install()
{
if [ `yum list git|grep Installed|wc -l` -eq 0 ];
then
  yum group-install "Development Tools"
  yum install git -y
  git config --global user.name "SandeepKumar"
  git config --global user.email "sandeeprhct@gmail.com"
  
fi
}

rdp_setup
git_install
