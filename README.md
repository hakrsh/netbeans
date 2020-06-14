# netbeans
Apache Netbeans using Alpine Linux docker image

## To run container 
```bash
xhost + 
docker run -ti -d -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/NetbeansProjects:/home/netbeans/workspace/ \
harium/netbeans
```

## Dependencies for Running Locally
* docker
  * Installation instructions- [https://docs.docker.com/get-docker/]
* docker-compose
  * Installation instructions- [https://docs.docker.com/compose/install/]
  
## Basic Build Instructions

1. Clone this repo.
2. `cd netbeans`
3. `docker build --rm -t netbeans .`
4. Run `./start_netbeans.sh` to start Netbeans IDE.
