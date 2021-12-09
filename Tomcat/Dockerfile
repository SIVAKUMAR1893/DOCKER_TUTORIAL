FROM ubuntu:latest

MAINTAINER gsivakumar1893@gmail.com
RUN  apt-get update && apt-get -y install openjdk-8-jre-headless && apt-get -y install curl && java -version
RUN mkdir /opt/tomcat
RUN cd /opt/ && ls -lrth
RUN curl -LJO  https://downloads.apache.org/tomcat/tomcat-10/v10.0.12/bin/apache-tomcat-10.0.12.tar.gz 
RUN  tar xzvf apache-tomcat-10.*tar.gz && mv apache-tomcat-10.* /opt/tomcat
RUN  chmod 755  /opt/tomcat/bin && cd /opt/tomcat/bin && ./startup.sh 
RUN apt-get -y install default-jdk 
WORKDIR /root/Docker/DOCKER_TUTORIAL/Tomcat
COPY Tomcat/index1.html index.html 
RUN ls -lrth
RUN jar -cvf index.war index.html 
ADD index.war /opt/tomcat/webapps
#RUN docker run -d -p 50:8080 tomcatserver

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
