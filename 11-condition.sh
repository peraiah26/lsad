#!/bin/bash

NUMBER=$1

if [ $(( $NUMBER % 2 )) -eq 0]; then

    echo "GIVEN NUMBER $NUMBER  IS EVEN NUMBER"

else
    echo "GIVEN NUMBER IS ODD NUMBER"

fi

