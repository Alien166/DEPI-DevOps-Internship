# Docker Nginx Setup with Volumes and Bind Mounts

This README provides instructions for setting up an Nginx server using Docker, with examples of how to use Docker volumes and bind mounts.

## Steps

### 1. Create Docker Volumes

First, create two Docker volumes to store HTML files and Nginx configuration:

    ```bash
    docker volume create volume1
    docker volume create volume2



### 2.Run an Nginx container and attach the created volumes:

    ```bash
       docker run -d --name my-nginx \
         -v volume1:/usr/share/nginx/html \
         -v volume2:/etc/nginx/conf.d \
         -p 8080:80 \
          nginx
### 3. Stop and Remove the Existing Nginx Container
    ```bash
      docker stop my-nginx
      docker rm my-nginx


##  Bind Mounts 

### 4. Run an Nginx Container with Bind Mounts


```bash
docker run -d --name nginx-bind-mount \
  -v /home/toba/DevOps/Docker/index.html:/usr/share/nginx/html/index.html \
  -v /home/toba/DevOps/Docker/default.conf:/etc/nginx/conf.d/default.conf \
  -p 8081:80 \
  nginx
