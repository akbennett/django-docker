#FROM debian:jessie-backports
#RUN apt-get update && apt-get install -y python3 python3-dev python3-pip apache2 
#RUN pip3 install django uwsgi
#RUN mkdir build && cd build && django-admin startproject testproject

FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

CMD bash
