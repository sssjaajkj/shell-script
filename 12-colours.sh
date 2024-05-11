#!/bin/bash
# Logs genaration

#Instlling mysql s/w 
 
 #How do run command in shell script and take output# in inter view
 USERID=$(id -u)
 TIMESTAMP=$(date +%F-%H-%M-%S)
 SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
 LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
 R=" \e[31m"
 G=" \e[32m"
 N=" \e[0m"

        VALIDATE ()
        {
        if [ $1 -ne 0]
            then
            
                echo -e "$2 ... $R Failure...$N"
                 exit  1
          else
          
            echo "$2 ...$G  Pass...$N"
            
    
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

    dnf install some-worong -y &>>$LOGFILE 
    VALIDATE $? "installation"

    dnf install docker -y &>>$LOGFILE 
    VALIDATE $? "installation"



    # dnf install mysql -y
    # VALIDATE $? "installation"

    # dnf install nginx  -y
    # VALIDATE $? "installation"
        