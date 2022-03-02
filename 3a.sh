#Create a script file called file properties that reads a filename entered and outputs it
#properties..

if [ -e $1 ]
then
	set -- `ls -ld $1`
	echo "Permission are $1"
	echo "File link count: $2"
	echo "Current User: $3"
	echo "Current Group: $4"
	echo "File Modification is done on $6 $7 at $8"
	echo "File name: $9:"
else
	echo "File does not exits"
fi
