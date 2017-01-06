FROM ubuntu:16.04


RUN mkdir -p /app
COPY . /app
RUN apt-get -y install python-pip
RUN pip install python-weixin
RUN pip install flask_oauthlib


EXPOSE 80

CMD ['python','/app/qq_demo.py']


