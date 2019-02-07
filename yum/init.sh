#!/bin/bash
echo "------------------------------------------------------------------------"
description="init yum"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
echo "==================="
start_date=$(date +"%s")

# init yum software

# install vim 
yum -y install vim
## fast mirror plugin
yum -y install yum-plugin-fastestmirror
## bash auto complete plugin
yum -y install bash-completion
## fish a command interactive tool
yum -y install fish
## network throughput tool 
yum -y install iftop
## curl
yum -y install curl 
## yum-utils
yum -y yum-utils
## screen 
yum -y install tmux

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the directory $(pwd)"
echo "------------------------------------------------------------------------"
