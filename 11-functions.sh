#!/bin/bash


#Instlling mysql s/w
 
 #How do run command in shell script and take output# in inter view
 USERID=$(id -u)

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

    if [$? -ne 0]
    then
     echo " Installtion of git ... is FAILURE"
    exit
     else
     echo "Installtion of git ... is SUCCESS"

fi
        echo " is script  proceeding ?"