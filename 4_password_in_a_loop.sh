PASSWORD="123456" #this is our password.
 
while :
do
echo "Password:"
read USERPASSWORD
 
if [ "$USERPASSWORD" == "$PASSWORD" ]; then
echo "You have access!"
exit
else
echo "ACCESS DENIED!"
fi
 
done
