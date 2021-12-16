#!/bin/sh

/bin/cp /opt/insteon-mqtt/config-example.yaml /config/insteon_mqtt.yaml.default

if [ ! -f /config/insteon_mqtt.yaml ]; then
    echo "Welcome to InsteonMQTT!"
    echo "Creating your initial insteon_mqtt.yaml file."
    /bin/cp /config/insteon_mqtt.yaml.default /config/insteon_mqtt.yaml
    sed -i "s/#storage: 'data'/storage: '\/config\/data'/" /config/insteon_mqtt.yaml
    sed -i "s/#file: \/var\/log\/insteon_mqtt.log/file: \/config\/insteon_mqtt.log/" /config/insteon_mqtt.yaml
    echo "Please edit the config file insteon_mqtt.yaml, you can find documentation at https://github.com/TD22057/insteon-mqtt"
    echo "Then you can restart InsteonMQTT container."
else
    python3 /usr/local/bin/insteon-mqtt /config/insteon_mqtt.yaml start
fi
