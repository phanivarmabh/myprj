	FROM ubuntu
	RUN apt-get update
	RUN apt-get install curl -y && apt-get install wget -y
	CMD ["service", "start"]
	WORKDIR /var/www/html
	EXPOSE 80
===================================================
	FROM tomcat7
	RUN apt-get update
	RUN apt-get install tomcat7 -y
	CMD ["service","tomcat7","start"]	
	ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/ /var/lib/tomcat/webapps
	EXPOSE 9090
	
