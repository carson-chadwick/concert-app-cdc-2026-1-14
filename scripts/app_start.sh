#!/bin/bash
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Navigate to the app directory
cd /home/ec2-user/app

# This will either start the app or restart it if it already exists
pm2 restart index.js --name "index.js" || pm2 start index.js --name "index.js"
