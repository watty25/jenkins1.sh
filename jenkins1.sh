
#!bin/bash

#author : willy
#date: 6/18/2022
######## jenkins intalation on centos7 #####

 ## installation ##

# 1 -install java
sudo yum install java-1.8.0-openjdk-devel

# 2- enable jenkins repository
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo 
sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

# 3 - install the latest version of jenkins
sudo yum install jenkins
sudo systemctl start jenkins 
sudo systemctl status jenkins

# 4 - ajust the firewall
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

