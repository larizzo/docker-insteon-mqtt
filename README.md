# docker-insteon-mqtt

Get the insteon-mqtt container:
docker pull larizzo/insteon-mqtt

docker run --device=/dev/ttyUSB0 -it docker.io/larizzo/insteon-mqtt

copy /config/insteon-mqtt.yaml.default to /config/insteon-mqtt.yaml and modify to suit needs.
