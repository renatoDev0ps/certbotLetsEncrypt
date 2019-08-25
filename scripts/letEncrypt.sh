sudo mkdir -p /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site
sudo vim /docker/letsencrypt-docker-nginx/src/letsencrypt/docker-compose.yml

usar composes/first/docker-compose.yml

sudo vim /docker/letsencrypt-docker-nginx/src/letsencrypt/nginx.conf

usar nginx/nginx.conf

sudo vim /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site/index.html

usar /index.html

cd /docker/letsencrypt-docker-nginx/src/letsencrypt
docker-compose up -d

usar certbot/first.sh
usar certbot/second.sh

sudo rm -rf /docker-volumes/

usar certbot/third.sh

cd /docker/letsencrypt-docker-nginx/src/letsencrypt
docker-compose down

sudo mkdir -p DevOps/Nginx/production-site
sudo mkdir -p DevOps/Nginx/dh-param
sudo vim DevOps/Nginx/docker-compose.yml

usar composes/second/docker-compose.yml

sudo vim DevOps/Nginx/production.conf

usar nginx/production.conf ou production2.conf

sudo openssl dhparam -out ~/DevOps/Nginx/dh-param/dhparam-2048.pem 2048

sudo vim DevOps/Nginx/production-site/index.html
# copie seu projeto para dentro da pasta production-site

cd ~/DevOps/Nginx
docker-compose up -d
