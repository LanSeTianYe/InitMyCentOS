#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
description="install docker"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
cost_time=$(( end_date - start_date ))
echo "==================="
start_date=$(date +"%s")

# install  
# install docker-ce
yum install -y device-mapper-persistent-data lvm2
yum-config-mamanger --add-repo https://download.docker.com/linux/centos/docker-ce.repoyum-config-manager 
yum install docker-ce

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the: directory $(pwd)"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
