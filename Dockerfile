# The specification version of docker-compose
version: "3.9"
# The collection of applications composing this service
services:
  # The NGINX custom container
  web:
    # Instead of referencing image: nginx:mainline-alpine here, use build to
    # reference the current directory (.), which will look for a dockerfile
    # by default
    build: .
    # The external directory location to map to an internal location
    volumes:
      - C:\Articles\NGINXPHP:/usr/share/nginx/html
    # The external port mapping to internal port mapping
    ports:
      - "80:80"
  php:
    image: php:fpm-alpine
    # It is important that both containers can reference the same files
    volumes:
      - C:\Articles\NGINXPHP:/usr/share/nginx/html
