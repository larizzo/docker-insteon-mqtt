#!/bin/bash

git clone 'https://github.com/TD22057/insteon-mqtt.git' /opt/insteon-mqtt && \
pip install /opt/insteon-mqtt && \
/bin/cp /opt/insteon-mqtt/config-example.yaml /config/insteon_mqtt.yaml.default

  if [ ! -f /config/insteon_mqtt.yaml ]; then
    echo "Copying insteon_mqtt.yaml"
    /bin/cp /config/insteon_mqtt.yaml.default /config/insteon_mqtt.yaml
  fi

insteon-mqtt /config/insteon_mqtt.yaml start
