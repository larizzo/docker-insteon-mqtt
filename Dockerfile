FROM python:3.6

VOLUME /config

#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app

RUN apt-get update && \
apt-get install -y \
python3-dev \
python3-pip \
git 

RUN git clone -b dev --single-branch 'https://github.com/TD22057/insteon-mqtt.git' /opt/insteon-mqtt

#RUN cd /opt/insteon-mqtt 
RUN pip install /opt/insteon-mqtt

COPY entrypoint.sh entrypoint.sh

CMD ["./entrypoint.sh" ]
#CMD ["insteon-mqtt", "start", "/config/insteon-mqtt.yaml" ]
