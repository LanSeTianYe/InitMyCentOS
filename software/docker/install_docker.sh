#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
description="install docker"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
cost_time=$(( end_date - start_date ))
echo "==================="
start_date=$(date +"%s")

# remove 
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

# install
yum install -y yum-utils

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# docker-compose
# https://github.com/docker/compose/releases 查看版本
sudo curl -L "https://github.com/docker/compose/releases/download/v2.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the: directory $(pwd)"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
