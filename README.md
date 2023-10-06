# CalOps Deployment Guide

## Overview

This guide provides major instructions that how I deploy the `CalOps` on a Kubernetes cluster and exposed it to the internet using `ngrok`.

## Prerequisites

1. Kubernetes cluster (e.g., Minikube)
2. `kubectl` CLI tool
3. Docker (if running Minikube locally)
4. `ngrok`

### Monitoring the Application

To monitor the health and performance of the application, you can use Kubernetes built-in tools:

1. To check the status of the pods:
   ```bash
   kubectl get pods


## Deployment

### Deploying the Application

1. Ensure that the Kubernetes cluster is up and running.

2. Apply the deployment manifest:
   ```bash
   kubectl apply -f deployment.yaml
   ## Monitoring and Logs
3. Exposing the Application Locally
   Forward the service port to your local machine:
   ```bash
   kubectl port-forward service/calci-app-deployment portnumber:portnumber
4. Exposing the Application to the Internet
   In a new terminal, start ngrok:
   ```bash
   ngrok http portnumber
ngrok will provide a public URL (e.g., https://random-subdomain.ngrok.io). Share this URL to provide external access to the application.

## Maintenance

### 1. **Regular Updates**

**Containers**:
It's crucial to ensure that the Docker images you're using are up-to-date. You can use the following script to update your image:

## The link for my application:
## https://7f2c-2402-e280-2146-6f7-3342-928d-97ca-e485.ngrok-free.app/
