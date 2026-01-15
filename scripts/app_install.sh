#!/bin/bash
set -e

echo "===== DEPLOY DEBUG ====="
echo "User: $(whoami)"
echo "PATH: $PATH"
echo "Home: $HOME"
echo "Node available? $(which node || echo 'node not found')"
echo "NPM available? $(which npm || echo 'npm not found')"
echo "Node version: $(node -v || echo 'none')"
echo "NPM version: $(npm -v || echo 'none')"
echo "========================"

# Go to app dir
cd /home/ec2-user/app

# Try to load NVM just in case
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Try installing dependencies
npm install
