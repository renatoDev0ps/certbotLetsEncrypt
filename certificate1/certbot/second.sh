sudo docker run --rm -it --name certbot \
-v /docker-certificate1-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-certificate1-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /docker/letsencrypt-certificate1-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt \
certbot/certbot \
--staging \
certificates
