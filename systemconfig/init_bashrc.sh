#!/bin/bash
bashrc_file="${HOME}/.bashrc"
init_bashrc_file="${HOME}/.init_bashrc"

# if flie not exists create it
if [ ! -f ${bashrc_file} ];then
  touch ${init_bashrc_file}
fi

cp -f ./.init_bashrc ${init_bashrc_file}
 
if [ `grep -c "${init_bashrc_file}" ${bashrc_file}` -eq '0' ];then
  echo "source ${init_bashrc_file}" >> ${bashrc_file}
fi

source ${bashrc_file}
