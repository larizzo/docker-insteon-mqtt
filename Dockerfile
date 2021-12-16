FROM python:3.9-slim-buster

VOLUME /config

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y git && \ 
git clone https://github.com/TD22057/insteon-mqtt.git /opt/insteon-mqtt && \
pip install /opt/insteon-mqtt && \
rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh entrypoint.sh

CMD ["./entrypoint.sh" ]
