#!/bin/bash

echo "All variables :$@"
echo "Number of varible passed  :$#"
echo "Script name   :$0"
echo "Current working directory  :$PWD"
echo "Home  directory  of current user :$HOME"
echo "Which user is  runing this script :$USER"
echo " Hostname :$HOSTNAME"
echo "Proces ID of the current shell script : $$"
sleep 30
echo "Process ID of last backgroud command :$!"

#Back ground & sending into background
