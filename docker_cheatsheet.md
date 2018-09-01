# Cleanup

## General

Find images and containers

    docker images
    docker images -f dangling=true
    docker ps -a
    docker system df

Deletes

    docker rmi image_name
    docker rm -v container_name     # -v deletes the unnamed volume.

## Volumes

    docker volume ls -f dangling=true
    docker volume prune
