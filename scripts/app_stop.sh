#!/bin/bash

export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

pm2 stop index.js 2>/dev/null || true
pm2 delete index.js 2>/dev/null || true

exit 0


