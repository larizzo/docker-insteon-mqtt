FROM homeassistant/amd64-homeassistant-base

VOLUME /config

RUN git clone 'https://github.com/TD22057/insteon-mqtt.git' /opt/insteon-mqtt \
pip install /opt/insteon-mqtt

COPY entrypoint.sh entrypoint.sh

CMD ["./entrypoint.sh" ]
