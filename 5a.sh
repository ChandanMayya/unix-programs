#Write a shell script that accepts filename as argument and display its creation time if file
#exist and if does not send output error message.

file1=$1
if [ -f $file1 ]
then
	set -- `ls -l $file1`
	echo "Modified time of $file1 is $8"
else
	echo "File not found!"
fi
