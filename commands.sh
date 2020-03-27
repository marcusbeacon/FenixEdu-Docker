#!/bin/bash

source ~/.bashrc
etc/init.d/mysql start
mysql -uroot -e "create database fenixedu" -proot
cd demo-webapp
mysql < mysql_commands.txt
mvn tomcat7:run