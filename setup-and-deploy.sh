#!/bin/bash

# 1. Set up Minikube
./scripts/minikube-setup.sh

# 2. Set up Docker
./scripts/docker-setup.sh

# 3. Deploy to minikube Kubernetes cluster
./scripts/kubernetes-deploy.sh

