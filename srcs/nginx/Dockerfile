#nginx
#TLSv1.2 or TLSv1.3
#https://mpolinowski.github.io/docs/DevOps/NGINX/2020-08-27--nginx-docker-ssl-certs-self-signed/2020-08-27/
#Alpine Linux
#Debian Buster
FROM debian:buster

# https://fr.linux-console.net/?p=16412

#https://baeldung.com/linux/nginx-docker-container <-- this one look good

RUN apt-get -y update && apt-get -y install nginx

COPY default /etc/nginx/sites-available/default

EXPOSE 80/tcp

CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]