#!/bin/bash
set -e

export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Stop/delete app if it exists, otherwise do nothing
pm2 stop index.js || true
pm2 delete index.js || true

