#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

VALIDATE(){
    if [ $? -ne 0 ]
then
    echo "$2 is failed"
        exit 1
    else
        echo "$2 is success"
    fi  
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git
e

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install.."
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "Git is already installed, nothing to do"
fi   


dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed, going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo "MySQL is already installed, nothing to do"
fi