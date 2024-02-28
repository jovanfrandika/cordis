include .env

up:
	docker-compose up -d lb --build

stop:
	docker-compose stop

rebuild:
	docker-compose build --no-cache

cert-create:
	docker-compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot -d ${APP_DOMAIN}

cert-renew:
	docker-compose run --rm certbot renew
