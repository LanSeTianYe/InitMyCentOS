#!/bin/bash
echo "------------------------------------------------------------------------"
description="init software"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
cost_time=$(( end_date - start_date ))
echo "==================="
start_date=$(date +"%s")

# init software
## init docker and docker-compose
cd ./docker/
source ./install_docker.sh
cd ..

# install syncthing
cd ./syncthing/
source ./install_syncthing_server.sh


end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the directory $(pwd)"
echo "------------------------------------------------------------------------"
