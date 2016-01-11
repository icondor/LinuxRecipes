  
# introducing a function
function user {
  PASSWORD="123456" #this is our password. echo "Password:"
  echo "Your password:"
  read USERPASSWORD
 
  if [ "$USERPASSWORD" == "$PASSWORD" ]; then echo "You have access!"
   else
    echo "ACCESS DENIED!"
  fi
}

# call the function 
user
