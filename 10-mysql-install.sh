#!/bin/bash


#Instlling mysql s/w
 
 #How do run command in shell script and takeing output#
 USERID=$(id -u)

 if [ $USERID -ne 0]
 then 
    echo "plz run this script with root access."
    exit 1 # manulaly exit if error comes 

    else 
            echo "you are super user."
    fi
        dnf install mysql -y

        echo " is script  proceeding ?"