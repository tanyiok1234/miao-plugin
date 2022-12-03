#!/bin/bash
function doSomething(){
    k=1
    for element in `ls "$*" | tr " " "\?"`
    do
        element=`tr "\?" " " <<<$element`
        dir_or_file="$1"/"$element"
        if [ -d "$dir_or_file" ];then
            doSomething "$dir_or_file"
        else
            #echo 
            DATE=$(date +%Y%m%d)
            mv "$dir_or_file" "$1""/"$DATE"_"$k"."${dir_or_file##*.}
            k=$[k+1] 
        fi
    done
}

root_dir="./super-character"
doSomething $root_dir
