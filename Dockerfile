	FROM ubuntu
	RUN apt-get update
	RUN apt-get install curl -y && apt-get install wget -y
	CMD ["service", "start"]
	WORKDIR /var/www/html
	EXPOSE 80
