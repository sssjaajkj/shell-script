    #!/bin/bash

    USERID=$(id -u)

     VALIDATE(){

        if [ $1 -ne 0]
            then 
             echo "$2 ... Installation Failed... "

            exit 1
            else 
            echo "$2 ... Installation Pass ....
        fi
        
    }


   
    if [ $USERID -ne 0 ]
        then 
            echo   "Please access with root user ...... FAILUAR..."
            exit 1
    else
    
    echo "Is a root user....SUCESS..."
    
    fi

   