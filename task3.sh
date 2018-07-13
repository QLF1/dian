#!/bin/bash

printfPwd(){
    echo "The largest file/directories in $(pwd) are:"
    du -a
    exit
}
printfSpecail(){
   echo "The largest file/directories in $4 are:"
   du -ah . | sort -nrk 1 | head -n $2
   exit
}
if [ -z $1 ];
    then
	printfPwd;
else if [[ $1 = '-n' && $3 = '-d' ]];
    then
    printfSpecail $2 $4;
else
    echo "error";
fi
