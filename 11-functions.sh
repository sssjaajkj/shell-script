    #!/bin/bash

    USERID=$(id -u)


    VALIDATE()
    {

        if [ $1 -ne 0]

            then 
             echo "$2 ... Installation Failed... "

            exit 1
            else 
            echo "$2 ... Installation Pass ....
        fi
         
        
        
    }
   

    dnf install mysql -y

    VALIDATE $? "INSTALLATION  mysql"

    
    dnf install git -y
    VALIDATE $? "INSTALLATION of git"
