#!/bin/bash

PACKAGES=("nginx" "mysql" "vim" "net-tools")
for package in ${PACKAGES[@]} 
do 
    dnf install $package -y 
done