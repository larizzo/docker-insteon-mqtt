FROM python:3.9-slim-buster

VOLUME /config

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y git && \ 
&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh entrypoint.sh

CMD ["./entrypoint.sh" ]
