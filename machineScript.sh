#!/bin/bash
sudo yum update -y
sudo apt install mysql-server
rpm -ivh https://repo.mysql.com//mysql57-community-release-el7-11.noarch.rpm
rpm -ivh https://repo.mysql.com//mysql57-community-release-el6-11.noarch.rpm
sudo yum install mysql-server