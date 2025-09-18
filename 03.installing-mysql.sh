#!/bin/bash

# Installing mysql database package
dnf install mysql-server -y

# Enabling the mysql package
systemctl enable mysqld

# Starting the mysql package
systemctl start mysqld

# Checking the status of the mysql package
systemctl status mysqld

# Setting the root password
mysql_secure_installation --set-root-pass ExpenseApp@1

# Logging into the mysql server
mysql

# show databases command 
show databases;

# Show tables command 
show tables;

# Exit form database
exit