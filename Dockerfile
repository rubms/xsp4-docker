FROM mono:6.6.0.161

MAINTAINER Rubén Martínez <ruben.martinez1@gmail.com>

RUN  apt-get update && apt-get install -y mono-xsp \
  && apt-get autoremove -y && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /app

EXPOSE 80

ENTRYPOINT [ "xsp4","--port","80"]
