#!/bin/bash
echo "------------------------------------------------------------------------"
description="init yum"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
echo "==================="
start_date=$(date +"%s")

# init yum software
# fast mirror plugin
yum -y install yum-plugin-fastestmirror
source /etc/profile
# bash auto complete plugin
yum -y install bash-completion
source /etc/profile
# network throughput tool 
yum -y install iftop
source /etc/profile

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the directory $(pwd)"
echo "------------------------------------------------------------------------"
