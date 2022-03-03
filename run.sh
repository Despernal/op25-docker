# example of docker-compose-less invocation of dockerized op25
# make sure IMAGE matches what you used in docker build -t $IMAGE .
IMAGE=op25-docker
sudo docker run --rm -it --privileged \
  -v /dev/bus/usb:/dev/bus/usb \
  -p 8765:8765 \
  -p 23456:23456 \
  -p 4455:4455 \
  $IMAGE
