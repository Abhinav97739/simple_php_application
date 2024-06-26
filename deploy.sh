#!/bin/bash

# Variables
SERVER="ubuntu@15.207.249.244"
SSH_KEY="/home/einfochips/Downloads/abhinav_key.pem"
SOURCE="/home/einfochips/simple_php_application"
DESTINATION="/var/www/html"

# Copy application files to EC2 instance
scp -i "$SSH_KEY" -r "$SOURCE" "$SERVER":"$DESTINATION"

# Restart Nginx (optional, adjust as needed)
ssh -i "$SSH_KEY" "$SERVER" "sudo systemctl restart nginx"
