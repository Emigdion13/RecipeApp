FROM python:3.9.0-alpine3.12

#Activate this option when running from Docker
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#To run processes
RUN adduser -D user_
USER user_ 

