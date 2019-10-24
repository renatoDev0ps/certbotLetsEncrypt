# Modificar DNS para domínio desejado
sudo docker run -it --rm \
-v /docker-certificate1-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-certificate1-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /docker/letsencrypt-certificate1-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt \
-v "/docker-certificate1-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
certbot/certbot \
certonly --webroot \
--email devops@urbans.com.br --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d app.18kworld.com
# Modificar DNS para domínio desejado
