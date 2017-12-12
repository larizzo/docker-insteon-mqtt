#!/bin/bash

/bin/cp -n /opt/insteon-mqtt/config.yaml /config/insteon-mqtt.yaml

insteon-mqtt start /config/insteon-mqtt.yaml
