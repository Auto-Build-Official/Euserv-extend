#! /bin/bash
work_path=$(dirname $(readlink -f $0))
echo "当前工作路径：$work_path"

source ${work_path}/env/bin/activate
if [ $? -eq 0 ];then
	cd ${work_path}
	python3 ${work_path}/main.py
else
	echo "环境设置错误!"
	exit
fi


if [ $? -eq 0 ];then
	echo "python 代码执行完毕"
	deactivate
	exit
else
	echo "python 代码未执行"
	deactivate
	exit
fi

