#!/bin/bash
# Logs genaration

#Instlling mysql s/w 
 
 #How do run command in shell script and take output# in inter view
 USERID=$(id -u)
 TIMESTAMP=$(date +%F-%H-%M-%S)
 SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
 LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

        VALIDATE ()
        {
        if [ $1 -ne 0]
            then
            
                echo "$2 ... Failure..."
                 exit  1
          else
          
            echo "$2 ... Pass..."
            
    
            fi   
            
            

        }
        
 if [ $USERID -ne 0 ] 
 then 
    echo "plz run this script with root access."
    exit 1 # manulaly exit if error comes 

    else 
            echo "you are super user."
    fi
        
      
    dnf install git -y &>>$LOGFILE 
    VALIDATE $? "installation"

    # dnf install mysql -y
    # VALIDATE $? "installation"

    # dnf install nginx  -y
    # VALIDATE $? "installation"
        