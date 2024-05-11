#!/bin/bash


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

    echo "All packages : $@"

    for i in $@
    do 
    echo "Package to insatll $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]

    then
    echo "$i already instted ... Skiping"
    else 
    echo "$i not already instted ... need to install"
    fi
    done