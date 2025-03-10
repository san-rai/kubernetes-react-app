#!/bin/bash
set -e

# Variables
IMAGE_NAME="kubernetes-react-app"
REGISTRY="localhost:5000"

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Tag the Docker image for the local registry
echo "Tagging image for local registry..."
docker tag $IMAGE_NAME $REGISTRY/$IMAGE_NAME

# Push the Docker image to the local registry
echo "Pushing Docker image to local registry..."
docker push $REGISTRY/$IMAGE_NAME

echo "Docker image has been successfully built and pushed to $REGISTRY/$IMAGE_NAME"