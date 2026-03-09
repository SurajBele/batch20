FROM ubuntu:22.04
RUN sudo apt install openjdk-17-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.115/bin/apache-tomcat-9.0.115.tar.gz /opt/
WORKDIR /opt
RUN tar -xzf apache-tomcat-9.0.115.tar.gz
WORKDIR /opt/apache-tomcat-9.0.115/bin
COPY index.html /var/www/html/index.html
ENV name=suraj
ENV department=devops
CMD [ "./catalina.sh", "run" ]
ENTRYPOINT [ "./catalina.sh", "run" ]
