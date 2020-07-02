#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
description="install python36"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
cost_time=$(( end_date - start_date ))
echo "==================="
start_date=$(date +"%s")

## python 
yum -y install python36 && yum -y install python-pip && pip install --upgrade pip
## link 

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the: directory $(pwd)"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
