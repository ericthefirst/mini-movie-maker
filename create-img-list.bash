# create-img-list.bash
# read directory listing
# produce JavaScript file with an object containing all the filenames

if [[ $# -lt 1 ]] ; then
	echo Usage: $0 directory
	exit 1
fi

dir=$1
img_list_f=images.js

echo "var images = [" > $img_list_f
for i in $dir/*.png ; do
	echo "    \"${i}\"," >> $img_list_f
done
echo "];" >> $img_list_f

echo object \'images\' created in file \'$img_list_f\'
