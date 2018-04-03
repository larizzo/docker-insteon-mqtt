# docker-insteon-mqtt

Get the insteon-mqtt container:
```
docker pull larizzo/insteon-mqtt
```

Docker run command, assumes your USB PLM is on /dev/ttyUSB0 and your local config folder is /mnt/user/appdata/:
```
docker run -d --name='insteon-mqtt' --net='bridge' -v '/mnt/user/appdata/insteon-mqtt/':'/config':'rw' --device=/dev/ttyUSB0 larizzo/insteon-mqtt
```
