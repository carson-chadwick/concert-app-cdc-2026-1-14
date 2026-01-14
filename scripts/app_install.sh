#!/bin/bash
set -e  # Exit immediately if a command fails

# Install Node.js and required libraries for Amazon Linux 2
echo "Installing Node.js and libatomic..."
sudo amazon-linux-extras enable nodejs18 -y
sudo yum install -y nodejs
sudo yum install -y libatomic

# Optional: Install PM2 globally
echo "Installing PM2..."
sudo npm install -g pm2

# Navigate to your app directory
cd /home/ec2-user/app

# Install app dependencies
echo "Installing app dependencies..."
npm install

echo "App installation complete."
