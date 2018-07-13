#!/bin/bash

#自动根据文件后缀名解压缩

filename=$1                    #获取压缩文件名
if test $filename -eq '--list'
    then
    echo"supported file types: zip tar tar.gz tar.bz2"
else if
    houzhui="${filename##*.}"
    case $houzhui in
	'zip')
	    unzip $filename  
	'tar')
	    tar -xf $filename  
	'tar.gz')
	    tar -zxf $filename  
	'tar.bz2')
	    tar tar -xjf $filename  
	esac
fi
