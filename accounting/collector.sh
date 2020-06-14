#!/bin/bash
filepath=$1
file=$2
onlygroup=$3
input="accountswpw_sending.txt"
while IFS= read -r line
do
  user=$(echo $line | awk '{print $1}')
  group=$(echo $line | awk '{print $8}')
  
  if [ $onlygroup = $group ]
  then
    echo $word1
    if [ ! -d "/home/dglyzin/${filepath}" ]
    then
      mkdir /home/dglyzin/${filepath}
      chown dglyzin:regular /home/dglyzin/${filepath}
    fi
    
    echo cp /home/$user/${file}_$user.ipynb /home/dglyzin/${filepath}
    cp /home/$user/${file}_$user.ipynb /home/dglyzin/${filepath}
    echo chown dglyzin:regular /home/dglyzin/${filepath}/${file}_$user.ipynb
    chown dglyzin:regular /home/dglyzin/${filepath}/${file}_$user.ipynb
  fi
done < "$input"
