#!/bin/bash
set -e

IMAGE_REACT_APP="kubernetes-react-app"
REGISTRY="localhost:5000"

# 1. Start container for local registry
echo "Starting local Docker registry..."
if [ $(docker ps -q -f name=registry) ]; then
    echo "'registry' container is already running. Skipping container start."
else
    echo "'registry' container is not running. Starting local Docker registry..."
    docker run -d -p 5000:5000 --name registry registry:2.7
fi

# 2. Build the Docker image for the React application
echo "Building Docker image..."
docker build -t $IMAGE_REACT_APP .

# 3. Tag the Docker image for the local registry
echo "Tagging image for local registry..."
docker tag $IMAGE_REACT_APP $REGISTRY/$IMAGE_REACT_APP

# 4. Push the Docker image to the local registry
echo "Pushing Docker image to local registry..."
docker push $REGISTRY/$IMAGE_REACT_APP

echo "Docker image has been successfully built and pushed to $REGISTRY/$IMAGE_REACT_APP"