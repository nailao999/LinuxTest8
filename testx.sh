#!/bin/bash
echo "请输入一组数字"
read -p "输入数字且以空格隔开：" -a  arrs
for((i=0;i<${#arrs[@]};i++))
     do
        for((j=0;j<${#arrs[@]}-1;j++))
             do
                if [[ ${arrs[j]} -gt ${arrs[j+1]} ]]
                        then
                                tmp=${arrs[j]}
                                arrs[j]=${arrs[j+1]}
                                arrs[j+1]=$tmp
                fi
             done
       done
echo "数据从小到大的排列：${arrs[@]}"

