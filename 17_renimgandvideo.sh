# initialize some variables 

# save the initial setting of the env variable called IFS
originalIFS=$IFS
IFS=$'\n'  # so I can parse names(files, folders) having spaces  

#counter 
c=0

# prefix for the new name of the files, choose any string 
newprefix=poze 
newprefixvideo=video
# name of the folder where the new files will be hosted, choose any string
PICT_DIR=poze
V_DIR=video

# create new folder only if it does not exist 
if [ ! -d "$PICT_DIR" ]; then
 mkdir $PICT_DIR
fi
if [ ! -d "$V_DIR" ]; then
 mkdir $V_DIR
fi

# find files, case insensitive, type file and make sure we pick also 
# the files and folders that has spaces into their names
# for each file do: 
	#define a new name, making sure it is unique by appending
	# the counter c
	# move the original file in the new location and rename it 
	# increment the counter 

find . -iname '*.jpg' -type f | while read -r i; do
 let c++
 new=$newprefix-$c."${i##*.}"
 mv "$i" $PICT_DIR/"$new"
done
echo "renamed and moved $c img files"

# reuse the same counter, but init to 0 
c=0
find . -iname '*.mov' -type f | while read -r i; do
 let c++
 new=$newprefixvideo-$c."${i##*.}"
 mv "$i" $V_DIR/"$new"
done
echo "renamed and moved $c video files"

# restore the initial setting of the env variable IFS
IFS=$oIFS

