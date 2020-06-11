#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ajammil/prediction_app:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predictionapp --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces
# Step 4:
# Forward the container port to a host
kubectl port-forward predictionapp-6f7c5bbfc4-wdc6k  8000:80
