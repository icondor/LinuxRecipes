GENNR=$(($RANDOM %10)) #between 0 and 10
counter=0
while :
do
echo "Your number:"
read KEYNR
counter=`expr $counter + 1`
if [ "$KEYNR" == "$GENNR" ]; then
	echo "You have guessed the number $KEYNR  after $counter tentatives"
        exit
else
	if [ "$KEYNR" -lt "$GENNR" ]; then 
         echo "Try a bigger one"
        else
         echo "Try a smaller one"
        fi
        echo "$counter tentatives"
fi
done
