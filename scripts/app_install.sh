#!/bin/bash
set -e  # Exit immediately if any command fails

# Navigate to app directory
cd /home/ec2-user/app

# Install libatomic (needed for Node)
sudo yum install -y libatomic

# Enable Node.js 18 via Amazon Linux Extras
sudo amazon-linux-extras enable nodejs18 -y
sudo yum install -y nodejs

# Optional: Install PM2 globally
sudo npm install -g pm2

# Install app dependencies
npm install

echo "App installation complete."
