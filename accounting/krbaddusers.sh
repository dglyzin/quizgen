#!/bin/bash
input=$1
while IFS= read -r line
do
  word1=$(echo $line | awk '{print $1}')
  word2=$(echo $line | awk '{print $2}')
  echo kadmin.local -q "addprinc -pw $word2 $word1"
  kadmin.local -q "addprinc -pw $word2 $word1"
done < "$input"
