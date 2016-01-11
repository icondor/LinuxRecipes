PASSWORD="123456" #this is our password.
counter=0
while :
 do
  echo "Password: "
  read USERPASSWORD
  counter=`expr $counter + 1`
  if [ "$USERPASSWORD" == "$PASSWORD" ]; then
   echo "You have access!"
   echo "$counter tentatives" 
   exit
  else
   echo "ACCESS DENIED!"
   echo "$counter tentatives"
  fi
done
 

