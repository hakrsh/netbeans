xhost +                                                                                                                                           
echo "Starting netbeans"    

docker run -ti -d -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/NetbeansProjects:/home/netbeans/workspace/ \
netbeans
