# CalOps Deployment Guide

## Overview

This guide provides major instructions that how I deploy the `CalOps` on a Kubernetes cluster and exposed it to the internet using `ngrok`.

## Prerequisites

1. Kubernetes cluster (e.g., Minikube)
2. `kubectl` CLI tool
3. Docker (if running Minikube locally)
4. `ngrok`

## Deployment

### Deploying the Application

1. Ensure that the Kubernetes cluster is up and running.

2. Apply the deployment manifest:
   ```bash
   kubectl apply -f deployment.yaml
   ## Monitoring and Logs

### Monitoring the Application

To monitor the health and performance of the application, you can use Kubernetes built-in tools:

1. To check the status of the pods:
   ```bash
   kubectl get pods
   
## Maintenance

### 1. **Regular Updates**

**Containers**:
It's crucial to ensure that the Docker images you're using are up-to-date. You can use the following script to update your image:

```bash
docker pull anirudh06/calci_img:latest
kubectl set image deployment/calci-app-deployment calci-app=anirudh06/calci_img:latest

