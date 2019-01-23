#!/bin/bash
echo "------------------------------------------------------------------------"
description="init systemconfig"
echo "enter the directory $(pwd)"
echo "${description} statr at " $(date +"%Y-%m-%d %H:%M:%S")
echo "==================="
start_date=$(date +"%s")

# init yum software
echo ""
echo "do nothing ..."
sleep 2

end_date=$(date +"%s")
cost_time=$(( end_date - start_date ))
echo "==================="
echo "${description} end at   " $(date +"%Y-%m-%d %H:%M:%S")
echo "${description} cost_time:"$cost_time"s"
echo "leave the directory $(pwd)"
echo "------------------------------------------------------------------------"
