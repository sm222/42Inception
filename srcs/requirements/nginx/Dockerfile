#nginx
#TLSv1.2 or TLSv1.3
#https://mpolinowski.github.io/docs/DevOps/NGINX/2020-08-27--nginx-docker-ssl-certs-self-signed/2020-08-27/
#Alpine Linux
#Debian Buster
# https://fr.linux-console.net/?p=16412
#https://baeldung.com/linux/nginx-docker-container <-- this one look good
#https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes-fr


FROM debian:buster

RUN apt-get -y update && apt-get -y install nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \ 
    -out /etc/nginx/ssl/cert.crt \
    -keyout /etc/nginx/ssl/key.key \
    -subj "/C=CA/ST=Quebec/L=Quebec/O=42/OU=inception/CN=anboisve.42.fr"

COPY /conf/ngnix.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD [ "/usr/sbin/nginx", "-g", "daemon off;"]
