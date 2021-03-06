#!/bin/bash
echo -e "\033[32m"
start_description="init script statr at  $(date +"%Y-%m-%d %H:%M:%S")"
start_time=$(date +"%s")

# init yum software
cd ./yum
source ./init.sh
cd ../
# init software
cd ./software/
source ./init.sh
cd ../
# init systemconfig 
cd ./systemconfig/
source ./init.sh
cd ../

end_time=$(date +"%s")
cost_time=$(( end_time - start_time ))
echo "init scritp total time is:"${cost_time}"s"
echo ${start_description}
echo "init script end   at" $(date +"%Y-%m-%d %H:%M:%S")
echo -e "\033[0m"
