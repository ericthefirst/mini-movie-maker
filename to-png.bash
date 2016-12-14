# to-png.bash
# destructively convert a directory of jpgs to 800x600 pngs

if [[ $# -lt 1 ]] ; then
	echo Usage: $0 [-p] directory
	exit 1
fi

dir=$1
W=800
H=600

# portrait
if [[ $1 = '-p' ]] ; then
	echo found -p
	dir=$2
	W=600
	H=800
fi


for f in $dir/*.JPG; do 
	echo $f to jpg
	mv $f ${f%%JPG}jpg
done

for f in $dir/*.jpg  ; do
	echo $f to png
	echo convert $f -resize "${W}x${H}" ${f%%jpg}png
	convert $f -resize "${W}x${H}" ${f%%jpg}png
	rm $f
done
