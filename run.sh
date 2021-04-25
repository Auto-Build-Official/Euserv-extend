#! /bin/bash

source env/bin/activate

python3 main.py

if [ $? -eq 0 ];then
echo "python 代码执行成功"
deactivate
else
echo "python 代码执行出错"
deactivate
fi

