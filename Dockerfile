FROM tomcat:8.0-alpine

MAINTAINER mouryanaidu42@gmail.com


WORKDIR /usr/local/tomcat

COPY **/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 3333
CMD ["catalina.sh", "run"]
