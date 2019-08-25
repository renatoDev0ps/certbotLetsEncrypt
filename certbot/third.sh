# Modificar DNS para domínio desejado
sudo docker run -it --rm \
-v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt \
-v "/docker-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
certbot/certbot \
certonly --webroot \
--email nextxtradingssl@gmail.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d nextxtrading.com -d www.nextxtrading.com
# Modificar DNS para domínio desejado
