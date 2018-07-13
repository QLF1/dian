#! /bin/bash

function funmul()
{
    local n=$1
    if test $n -eq 0 
    then 
	mul=1
    else
	funmul `expr $n - 1`
        mul=`expr $n \* $mul `
    fi
    return $mul   
}

funmul $1
echo $mul



