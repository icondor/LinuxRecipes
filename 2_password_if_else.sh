PASSWORD="123456" #this is our password.
 
echo "Password:"
read USERPASSWORD
 
if [ "$USERPASSWORD" == "$PASSWORD" ]; then
echo "You have access!"
else
echo "ACCESS DENIED!"
fi
