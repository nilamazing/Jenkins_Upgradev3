FROM tomcat:8.0
RUN ls java-tomcat-sample-docker/target
ADD java-tomcat-sample-docker/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]