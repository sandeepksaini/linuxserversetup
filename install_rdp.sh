#!/bin/bash
# Purpose: The purpose of this shell script is to install and setup a RDP server and tiger vnc on CentOS machine.

function rdp_setup() 
{
yum -y install epel-release && rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
yum install xrdp tigervnc-server
systemctl start firewalld
filrewall-cmd --permanent --zone=public --add-port=3389/tcp
firewall-cmd --reload
chcon --type=bin_t /usr/sbin/xrdp
chcon --type=bin_t /usr/sbin/xrdp-sesman 
systemctl start xrdp.service
systemctl enable xrdp.service
}

rdp_setup
