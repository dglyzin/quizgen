#!/bin/bash
input=$1
while IFS= read -r line
do
  word1=$(echo $line | awk '{print $1}')  
  echo mkdir /home/clusterhome/$word1
  echo chown $word1:regular /home/clusterhome/$word1  
  mkdir /home/clusterhome/$word1
  chown $word1:regular /home/clusterhome/$word1  
done < "$input"
