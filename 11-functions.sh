#!/bin/bash


#Instlling mysql s/w
 
 #How do run command in shell script and take output# in inter view
 USERID=$(id -u)

        VALIDATE ()
        {
            echo "hello "
        }
 if [ $USERID -ne 0 ] 
 then 
    echo "plz run this script with root access."
    exit 1 # manulaly exit if error comes 

    else 
            echo "you are super user."
    fi
        dnf install mysql -y
        if [ $?-ne 0 ]
        then 
        echo "Installtion of mysql ... is FAILURE"

        exit 1
        else
        echo  "installation mysql is success...."

    fi

    dnf install git -y

    dnf install mysql -y

    VALIDATE "$?" "installation"
        