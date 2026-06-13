#!/bin/bash

DATE=$(date)

START_TIME=$(date +%s)
END_TIME=$(DATE +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "the total time is: $(TOTAL_TIME)