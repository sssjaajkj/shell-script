#!/bin/bash


#Instlling mysql s/w
 
 #How do run command in shell script and take output# in inter view
 USERID=$(id -u)

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
        
        if [ $? -ne 0 ]
       then
        echo "Installtion of mysql ... is FAILURE"

        exit 1
        else
        echo  "installation mysql is success...."

    fi

    dnf install git -y
    VALIDATE $? "installation"
    dnf install mysql1 -y
    VALIDATE $? "installation"
    dnf install nginx  -y

    VALIDATE $? "installation"
        