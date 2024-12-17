# Docker

## Installation and Basic Commands

Install Docker. Open the terminal and run the following commands:

*   `docker run -it ubuntu` (Creates an image)
*   `docker container ls` (Checks running containers)
*   `docker container ls -a` (Checks all containers)
*   `docker exec (container_Name) ls` (Gets the exact container list)
*   `docker exec -it container_Name bash` (Connects to the container with the terminal)
*   `docker images` (Checks how many images are available)
*   `docker run -it -p 1025:1025 imageName` (Maps the port outside of the Docker container; 1025 is an example port)

## Dockerfile

A Dockerfile is used to configure Docker within your application or to create an image.

*   `docker build -t first-image .` (After configuring the Dockerfile, run this command in the project terminal to build an image)

To push an image to a Docker registry (like Docker Hub):

1.  Go to a registry and create a repository.
2.  You will get a new image name.
3.  Create an image locally with the same name.
4.  Open a terminal and push the new image using `docker push newimagename`. (You might need to login first using `docker login`)

## Docker Compose

Docker Compose is used to manage multi-container Docker applications.

*   `docker compose up` (After configuring the `docker-compose.yml` file, run this command to start all services)
*   `docker compose down` (Removes all services)
*   `docker compose up -d` (Runs containers in the background)
*   `pwd` (Checks the current path)
*   `docker run -it -v path:path imageName` (Mounts the directories)

## Container Management and Networking

*   `docker run -it --name my_container busybox` (Copies another container - this command actually creates a new container with a name)
*   `docker network inspect bridge` (Checks which containers are communicating with the bridge network)
*   `docker network ls` (Lists available networks on your local machine)

## Host Networking

*   `docker run -it --network-host busybox` (Defines a container for a host; `busybox` is an example image)

Running a container in host mode means the container's ports are directly available locally and accessible.

## Custom Networks

*   `docker network create -d bridge testing` (Creates a custom bridge network named "testing")