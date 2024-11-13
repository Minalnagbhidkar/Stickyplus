#!/bin/bash

sudo chmod -R 777 /home/ubuntu/Stickynote-Upgrade/

echo "Starting Node.js application using PM2..."

# Navigate to the application directory
cd /home/ubuntu/Stickynote-Upgrade
cp /home/ubuntu/Stickynote-Upgrade/websocket-server/server.js /home/ubuntu/Stickynote-Upgrade/

# Stop the existing application instance, if running
pm2 delete server || true # Ignore errors if the process is not found

# Start the application with PM2
#pm2 start server.js --name server
pm2 start server.js --name NOTE

echo "Node.js application started with PM2."
