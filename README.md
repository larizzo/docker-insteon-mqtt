# docker-insteon-mqtt
This is a docker container for the insteon-mqtt project, for setup and more information please see the project git [insteon-mqtt](https://github.com/TD22057/insteon-mqtt)

Get the insteon-mqtt container:
```
docker pull larizzo/insteon-mqtt
```

Docker run command, assumes your USB PLM is on /dev/ttyUSB0 and your local config folder is /mnt/user/appdata/:
```
docker run -d --name='insteon-mqtt' --net='bridge' -v '/mnt/user/appdata/insteon-mqtt/':'/config':'rw' --device=/dev/ttyUSB0 larizzo/insteon-mqtt
```

Configure your config file and restart the container, see [insteon-mqtt](https://github.com/TD22057/insteon-mqtt) for how to configure:
```
vi /mnt/user/appdata/insteon-mqtt/insteon_mqtt.yaml
docker restart insteon-mqtt
```
