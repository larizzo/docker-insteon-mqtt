# docker-insteon-mqtt
This is a docker container for the insteon-mqtt project, for setup and more information see the project git [insteon-mqtt](https://github.com/TD22057/insteon-mqtt)

Get the insteon-mqtt container:

```
docker pull larizzo/insteon-mqtt
```

Docker run command, assuming your USB PLM is on /dev/ttyUSB0 and you need to set <path to data> to where you want to storage your config on your host.

```
docker run -d --name=insteon-mqtt --net=bridge -v <path to data>:/config:rw --device=/dev/ttyUSB0 larizzo/insteon-mqtt
```

Configure your config file and restart the container, see [insteon-mqtt](https://github.com/TD22057/insteon-mqtt) for how to configure:

```
vi <path to data>/insteon_mqtt.yaml
docker restart insteon-mqtt
```
