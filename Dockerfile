FROM ubuntu:16.04

MAINTAINER Chris Fidao

RUN apt-get update 
RUN apt-get install -y nginx 

EXPOSE 80
CMD ["nginx"]
