FROM tomcat:9-jre8-temurin-focal
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/thymeleaf-itutorial.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh","run"]