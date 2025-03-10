#!/bin/bash

DEPLOYMENT_FILE="kubernetes/deployment.yaml"
SERVICE_FILE="kubernetes/service.yaml"

# 1. Apply the deployment and service files
echo "Applying Kubernetes Deployment..."
kubectl apply -f $DEPLOYMENT_FILE

echo "Applying Kubernetes Service..."
kubectl apply -f $SERVICE_FILE

# 2. Wait for the pods to be ready
echo "Waiting for pods to be ready..."
kubectl wait --for=condition=ready pod --selector=app=example-react-app --timeout=300s

# 3. Show the status of pods and services
kubectl get pods
kubectl get services

echo "Deployment to Minikube completed."

# 4. Open the service in default browser
echo "Opening service in default browser..."
minikube service react-app-service