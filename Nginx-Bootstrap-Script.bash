#!/bin/bash
# Update the package list
sudo apt-get update -y

# Install Nginx
sudo apt-get install -y nginx

# Start Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Optional: Print the status of Nginx
sudo systemctl status nginx
