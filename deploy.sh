#!/bin/bash

CONTAINER_NAME="my_docker"
IMAGE_NAME="my_docker"

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    # Stop and remove the running container
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Check if an image with the same name exists
if [ "$(docker images -q $IMAGE_NAME)" ]; then
    # Remove the existing image
    docker rmi $IMAGE_NAME
fi

# Build a new Docker image
docker build -t $IMAGE_NAME .

# Run a new container from the image
docker run -d --name $CONTAINER_NAME -p 5000:5000 $IMAGE_NAME
