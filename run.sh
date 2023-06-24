# example of docker-compose-less invocation of dockerized op25
# make sure IMAGE matches what you used in docker build -t $IMAGE .
IMAGE=op25-docker
docker run --rm -d --privileged \
  -v /dev/bus/usb:/dev/bus/usb \
  -v /run/user/${UID}/pulse/native:/run/user/1000/pulse/native \
  -p 8765:8765 \
  -p 23456:23456/udp \
  $IMAGE
