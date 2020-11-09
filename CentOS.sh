#!/bin/bash

# Update all existing packages
yum update -y

# Install Yum utilities
yum -y install yum-utils

# Install dev tools
yum groupinstall development -y

# Install vim
yum install vim -y

# Install MySQL server
## Download the repo
cd /tmp
wget http://repo.mysql.com/mysql-community-release-eddl7-9.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum update -y

## Install mysql-server
yum install mysql-server -y
systemctl start mysqld

# Install Git 1.8 
yum install git -y


# Install htop 
yum install -y htop


# Install wget 
yum install -y wget


# Install mlocate 
yum install -y mlocate
updatedb


# Install Nginx 1.8 
yum install nginx -y

# Install Supervisord 
yum install supervisor -y

# Install Composer
yum install composer -y

# Install Docker 
yum install docker -y


# Install wkhtmltopdf 
yum install wkhtmltopdf -y

# Install pdftk 
yum install python-pdfkit -y

# Update everything again just to make sure
yum update -y

# Display mqsql status, and secure instillation
systemctl status mysqld
sudo mysql_secure_installation
