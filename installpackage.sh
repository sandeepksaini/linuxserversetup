#!/bin/bash
#Purpose: To install the preliminary package for the setup of the host server

#Install using yum package installer
for package_list in bash-completion fish screen epel; 
do 
 yum install ${package_list} -y
done
