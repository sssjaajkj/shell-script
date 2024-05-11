    #!/bin/bash

    USERID=$(id -u)

    if [ $USERID -ne 0 ]
    
        then 
            
            echo  "Please access with root user ...... FAILUAR..."
            exit 1
    else
    
    echo "Is a root user....SUCESS..."
    
    fi

    dnf install mysql -y