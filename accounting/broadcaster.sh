#!/bin/bash
onlygroup=$1
input="users_wpw.txt"
while IFS= read -r line
do
  user=$(echo $line | awk '{print $1}')
  group=$(echo $line | awk '{print $8}')
  
  if [ $onlygroup = $group ]
  then
    echo $word1
    echo cp /home/clusterhome/dglyzin/class2-2020-11-02.ipynb /home/clusterhome/$user/
    cp /home/clusterhome/dglyzin/class2-2020-11-02.ipynb /home/clusterhome/$user/
    echo chown $user:regular /home/clusterhome/$user/class2-2020-11-02.ipynb
    chown $user:regular /home/clusterhome/$user/class2-2020-11-02.ipynb
  fi
done < "$input"
