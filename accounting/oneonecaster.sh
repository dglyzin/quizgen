#!/bin/bash
filepath=$1
filebase=$2
onlygroup=$3
input="accountswpw_sending.txt"
while IFS= read -r line
do
  user=$(echo $line | awk '{print $1}')
  group=$(echo $line | awk '{print $8}')
  
  if [ $onlygroup = $group ]
  then
    echo $word1
    echo cp /home/dglyzin/$filepath/${filebase}_$user.ipynb /home/$user/${filebase}_$user.ipynb
    cp /home/dglyzin/$filepath/${filebase}_$user.ipynb /home/$user/${filebase}_$user.ipynb
    echo chown $user:regular /home/$user/${filebase}_$user.ipynb
    chown $user:regular /home/$user/${filebase}_$user.ipynb
  fi
done < "$input"
