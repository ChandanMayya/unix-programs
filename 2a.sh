#Write a shell script that accepts two filenames as arguments, checks if the permissions for
#these files are identical and if the permissions are identical, output common permissions
#otherwise output each filename followed by its permissions.

file1=$1
file2=$2
if [ -e $file1 ]
then
	set -- `ls -ld $file1`
	fp1=$1
else
	echo "$file1 doesnt exit"
	exit
fi
if [ -e $file2 ]
	then
	set -- `ls -ld $file2`
	fp2=$1
else
	echo "$file2 doesnt exit"
exit
fi
if [ $fp1 = $fp2 ]
then
	echo "File Permission are identical!"
	echo "Permissions are $fp1"
else
	echo "File Permission are not identical"
	echo "$file1 Permission is $fp1"
	echo "$file2 Permission is $fp2"
fi
