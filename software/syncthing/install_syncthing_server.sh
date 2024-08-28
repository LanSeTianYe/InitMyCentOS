#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
description="install syncthing server"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
cost_time=$(( end_date - start_date ))
echo "==================="
start_date=$(date +"%s")

# synthing server 
docker ps -a | grep syncthing | awk '{print $0}' | xargs docker stop

docker ps -a | grep syncthing | awk '{print $0}' | xargs docker rm

docker run -d -p 8384:8384 -p 22000:22000/tcp -p 22000:22000/udp -p 21027:21027/udp \
    -v ~/syncthing:/var/syncthing \
    --name syncthing \
    --hostname=my-syncthing \
    --restart always\
    syncthing/syncthing:latest


end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the: directory $(pwd)"

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
