# example of docker-ompose-less invocation of dockerized op25
sudo docker run --rm -it --privileged \
  -v /dev/bus/usb:/dev/bus/usb \
  -p 8765:8765 \
  -p 23456:23456 \
  -p 4455:4455 \
  op25-docker_op25 \
  bash -c /rx.sh
