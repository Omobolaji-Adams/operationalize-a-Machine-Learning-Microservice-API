#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="iiadams/projectmicroservice:firstversion"

# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run projectmicroservice --image=$dockerpath --port=80 --labels app= projectmicroservice

# Step 3:
# List kubernetes pods
 sudo kubectl get pods

# Step 4:
# Forward the container port to a host
sudo kubectl port-forward projectmicroservice 8000:80