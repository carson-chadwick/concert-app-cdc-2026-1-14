#!/bin/bash
set -e

# Load NVM so node and npm are available
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Optional: check versions
node -v
npm -v

# Go to app directory
cd /home/ec2-user/app

# Install dependencies
npm install
