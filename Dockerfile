# Use the official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY weather-app-main/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY weather-app-main .

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy Nginx configuration file (make sure nginx.conf is in the same directory as this Dockerfile)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the start-nginx.sh script and make it executable
COPY start-nginx.sh /usr/local/bin/start-nginx.sh
RUN chmod +x /usr/local/bin/start-nginx.sh

# Expose ports for the app and Nginx
EXPOSE 3000 80 443

# Start Nginx and the Node.js app using the start script
CMD ["/usr/local/bin/start-nginx.sh"]