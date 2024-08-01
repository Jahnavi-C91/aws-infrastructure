#!/bin/bash

# Update package lists
sudo apt-get update

# Install necessary packages
sudo apt-get install -y python3 python3-pip nginx

# Start and enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx
