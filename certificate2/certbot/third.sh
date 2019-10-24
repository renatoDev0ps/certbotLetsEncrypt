# Modificar DNS para domínio desejado
sudo docker run -it --rm \
-v /docker-certificate2-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-certificate2-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /docker/letsencrypt-certificate2-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt \
-v "/docker-certificate2-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
certbot/certbot \
certonly --webroot \
--email bitextradingssl@gmail.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d admintest.bitextrading.com
# Modificar DNS para domínio desejado
