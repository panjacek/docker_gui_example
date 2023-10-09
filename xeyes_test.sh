set -x
export XSOCK=/tmp/.X11-unix
export XAUTH=/tmp/.docker.xauth
xauth nlist ${DISPLAY} | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run --rm -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH xeyes
