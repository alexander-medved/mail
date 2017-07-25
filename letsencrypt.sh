#!/bin/bash
docker-compose stop nginx;
docker run -it --rm   -v /mnt/docker/nginx/certs:/etc/letsencrypt \
	-p 80:80 -p 443:443 xataz/letsencrypt certonly --standalone \
	--rsa-key-size 4096 --agree-tos -m contact@playtagon.com \
	-d webmail.playtagon.com -d mail2.playtagon.com -d postfixadmin.playtagon.com;
docker-compose up -d
