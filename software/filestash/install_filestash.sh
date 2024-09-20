#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
description="install filestash server"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
cost_time=$(( end_date - start_date ))
echo "==================="
start_date=$(date +"%s")

# synthing server 
docker ps -a | grep filestash | awk '{print $0}' | xargs docker stop

docker ps -a | grep filestash | awk '{print $0}' | xargs docker rm

docker-compose up -d

mkdir ~/filestash && chowni -R 1000:1000 ~/filestash

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the: directory $(pwd)"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
