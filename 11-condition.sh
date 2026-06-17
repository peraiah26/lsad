#!/bin/bash

NUMBER=$1

if [ $(( NUMBER % 2 )) -eq 0 ]; then

    echo "GIVEN NUMBER $NUMBER  IS EVEN NUMBER"

else
    echo "GIVEN NUMBER IS ODD NUMBER"

fi

LEADERS=("Modi" "Putin" "Trudo" "Trump")

echo "All leaders: ${LEADERS[*]}"
echo "First Leader: ${LEADERS[0]}"
echo "First Leader: ${LEADERS[10]}"

