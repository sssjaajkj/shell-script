#!/bin/bash

COURSE="dEVOPS FROM CUREENT SCRIPT"

echo "Before calling other script , course : $COURSE"

echo "Process ID of cuurent shell script , : $$"

./16-other-script.sh

echo "After calling other script , course : $COURSE"


