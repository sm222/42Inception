FROM debian:oldstable

RUN apt update  -y && apt upgrade -y
RUN apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/nginx/ssl/cert.crt \
    -keyout /etc/nginx/ssl/key.key \
    -subj "/C=CA/ST=Quebec/L=Quebec/O=42/OU=inception/CN=anboisve.42.fr"

COPY conf/ngnix.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;"]
