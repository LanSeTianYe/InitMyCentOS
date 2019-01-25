#!/bin/bash
rc_file="${HOME}/.vimrc"
init_rc_file="${HOME}/.init_vimrc"

# if flie not exists create it
if [ ! -f ${rc_file} ];then
  touch ${init_rc_file}
fi

cp -f ./.init_vimrc ${init_rc_file}
 
if [ `grep -c "${init_rc_file}" ${rc_file}` -eq '0' ];then
  echo "source ${init_rc_file}" >> ${rc_file}
fi
