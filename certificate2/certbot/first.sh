# Modificar os DNS para domínio desejado
sudo docker run -it --rm \
-v /docker-certificate2-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-certificate2-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /docker/letsencrypt-certificate2-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt \
-v "/docker-certificate2-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
--staging \
-d 18kworld.com -d www.18kworld.com -d app.18kworld.com
# Modificar os DNS para domínio desejado
