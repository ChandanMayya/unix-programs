if [ $# -eq 1 ]
then
	dirnam=$1
	if [ -d $dirnam ]
	then
		set -- `ls -Rl $dirnam |grep "^-" | tr -s " " | cut -d " " -f 5,9| sort -n | tail -l`
		echo "File name: $2"
		echo "File size: $1"
	else
		echo "File: $dirnam not found!"
	fi
else
	echo "Enter a valid parameter"
fi
