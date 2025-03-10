#!/bin/bash

# 1. Start Minikube
echo "Starting Minikube..."
if minikube status | grep -q "host: Running"; then
    echo "Minikube is already running. Skipping 'minikube start'."
else
    echo "Minikube is not running. Starting Minikube..."
    minikube start
fi

# 2. Set Docker environment to use Minikube's Docker daemon
echo "Setting Docker environment to Minikube..."
eval $(minikube docker-env)