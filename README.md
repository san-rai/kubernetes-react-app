# Kubernetes React App
This is a test project aimed at deploying a simple React app on a Kubernetes cluster (using Minikube).

The purpose of this project is to containerise a React app using Docker, deploy it on a local Kubernetes cluster, and manage the application using Kubernetes resources.

## Project Overview
This project includes the following:
- React app built using Vite
- Dockerfile to build a Docker image for the React app
- Minikube Kubernetes cluster for local development
- Kubernetes deployment and service configuration files to deploy the app to the cluster and expose it

## Prerequisites
Before you begin, ensure you have the following installed:
1. **Homebrew**
2. **Minikube** (Local Kubernetes cluster for macOS, Linux, and Windows)
3. **kubectl** (Kubernetes CLI)
4. **Docker**
5. **Docker Desktop**

## Run the App Locally Using Minikube
### 1. Run the script
```
./setup-and-deploy.sh
```
What the script does:
- Initialises local Kubernetes cluster using Minikube
- Sets Docker environment to Minikube's Docker daemon
- Starts the local Docker registry container
- Builds React app Docker image and pushes it to the local registry
- Deploys the React app to the local Kubernetes cluster
- Exposes the app via a Kubernetes service

### 2. Access the App in Your Browser
If the app does not open automatically in your default browser, run the following command:
```
minikube service react-app-service
```