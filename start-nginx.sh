#!/bin/sh
# Start Nginx and Node.js app

# Start the Node.js app in the background
node /usr/src/app/server.js &

# Start Nginx in the foreground
nginx -g "daemon off;"
