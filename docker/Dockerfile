# FROM ubuntu:22.04
# RUN apt-get install openjdk-17-jdk -y
# ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.115/bin/apache-tomcat-9.0.115.tar.gz /opt/
# WORKDIR /opt
# RUN tar -xzf apache-tomcat-9.0.115.tar.gz
# WORKDIR /opt/apache-tomcat-9.0.115/bin
# COPY index.html /var/www/html/index.html
# ENV name=suraj
# ENV department=devops
# CMD [ "./catalina.sh", "run" ]
# ENTRYPOINT [ "./catalina.sh", "run" ]

FROM alpine:latest

# Install Apache HTTP Server
RUN apk update && apk add --no-cache apache2
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.107/bin/apache-tomcat-9.0.107.tar.gz.asc /opt
# Set environment variable
ENV project=devops

# Set working directory
WORKDIR /var/www/localhost/htdocs/

# Copy index.html to Apache's root directory
COPY index.html .

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
