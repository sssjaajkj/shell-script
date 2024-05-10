#!/bi/bash

# Array Declar/init
MOVIES=("RRR","DJTILL","MURARI")

#list always start with 0 zer0
# retriving array of elements
echo "First Movie is : ${MOVIES[0]}"
echo "second Movie is : ${MOVIES[1]}"

echo "First Movie is : ${MOVIES[@]}" #All movies

