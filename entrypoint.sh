#!/bin/bash

/bin/cp /opt/insteon-mqtt/config.yaml /config/insteon-mqtt.yaml.default

insteon-mqtt start /config/insteon-mqtt.yaml
