#!/bin/bash

# Install Java
sudo dnf install -y java-17-amazon-corretto

# Download and extract Tomcat
cd /tmp
curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz
sudo mkdir -p /opt/tomcat
sudo tar xzvf apache-tomcat-9.0.85.tar.gz -C /opt/tomcat --strip-components=1

# Create tomcat user
sudo groupadd tomcat
sudo useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat

# Set permissions
sudo chown -R tomcat:tomcat /opt/tomcat
sudo chmod +x /opt/tomcat/bin/*.sh
