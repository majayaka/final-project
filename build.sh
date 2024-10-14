#!/bin/bash

# Install necessary packages
apt-get update && apt-get install -y docker.io docker-compose

# Move to the working directory
cd /var/lib/jenkins/workspace/final-project

# Check if the Docker image exists
docker image inspect weather-app:latest &> /dev/null
if [[ $? -eq 0 ]]; then
  # If the image exists, update the tag
  docker tag weather-app:latest weather-app:latest-old
fi

# Build the Docker image
docker-compose build
if [[ $? -ne 0 ]]; then
  echo "Error during docker-compose build";
  exit 1;
fi

# Tag the image
docker tag weather-app:latest ayakayu/weather-app:1.0.0 

# Push the image to Dockerhost
docker push ayakayu/weather-app:1.0.0

# Remove the old image (optional)
# docker rmi weather-app:latest-old 

# Exit message
echo "Docker image build, update, and push completed."