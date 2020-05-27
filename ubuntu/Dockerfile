FROM ubuntu:20.04

#install Ubuntu essential tools
RUN apt update && apt upgrade -y

#install mongodb
RUN apt install libcurl4 openssl wget gnupg2 -y

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -

RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list

RUN apt update -y

RUN apt install -y mongodb-org
RUN mkdir /mongo
RUN mkdir /mongo/data
RUN mkdir /mongo/log
RUN touch /mongo/log/mongod.log

VOLUME [ "/mongo/data" ]

EXPOSE 27017

RUN apt install -y default-jre

ENV JAVA_HOME /usr/lib/jvm/default-java

#Show java version
RUN java -version

WORKDIR /apps

ADD /freeman/target/freeman.jar /apps

# RUN apt update

# RUN apt install -y nginx
