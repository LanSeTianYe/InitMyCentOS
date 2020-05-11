#!/bin/bash
echo "------------------------------------------------------------------------"
description="init yum"
echo "enter the directory $(pwd)"
echo "${description} start at " $(date +"%Y-%m-%d %H:%M:%S")
echo "==================="
start_date=$(date +"%s")

# init yum software

# var
system_version=$(cat /etc/redhat-release | cut -d " " -f 4 | cut -d "." -f 1)

## fast mirror plugin
yum -y install yum-plugin-fastestmirror

## yum-utils
yum -y install yum-utils

# installl git
yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum install -y git2u-all

# ab
yum -y install httpd-tools

# install vim 
yum -y install vim

## curl
yum -y install curl 

## bash auto complete plugin
yum -y install bash-completion

## jdk
yum -y install java-1.8.0-openjdk-develk

# ## fish a command interactive tool(annotated because of diffrent shell syntax)
# cd /etc/yum.repos.d/
# wget "http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_${system_version}/shells:fish:release:2.repo"
# cd -
# yum -y install fish

## network throughput tool 
yum -y install iftop

## screen 
yum -y install tmux

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the directory $(pwd)"
echo "------------------------------------------------------------------------"
