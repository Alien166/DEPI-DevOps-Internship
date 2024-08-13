# Custom Nginx Docker Setup

This guide provides instructions for creating a custom Docker image for Nginx with different HTML content and a custom Nginx configuration that listens on port 8080.

## Steps

### 1. Create the Dockerfile

### 2. Create the HTML File

### 3. Create the Nginx Configuration File

### 4. Build the Docker Image

docker build -t custom-nginx .

### 5. Create a Container from the New Image

docker run -d --name custom-nginx-container -p 8080:80 custom-nginx



