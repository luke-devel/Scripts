#!/bin/bash

# Update all existing packages
yum update -y

# Install Yum utilities
yum -y install yum-utils

# Install dev tools
yum groupinstall development -y

# Install dnf
yum install dnf -y

# NeoFetch
sudo dnf -y install dnf-plugins-core
sudo dnf -y copr enable konimex/neofetch
sudo dnf -y install neofetch

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

# Display mqsql status, and secure instillation
systemctl status mysqld
sudo mysql_secure_installation

# Install Git
yum install git -y

# Install bpytop
sudo dnf install bpytop

# Install wget 
yum install -y wget

# Install Nginx
yum install nginx -y

# Install Docker 
yum install docker -y

# Install wkhtmltopdf 
yum install wkhtmltopdf -y

# Install pdftk 
yum install python-pdfkit -y

# tmux
yum install tmux

# Update everything again just to make sure
yum update -y

# Run bpytop and finish
bpytop
