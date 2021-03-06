FROM centos:7


RUN mkdir /chess
COPY . /chess
WORKDIR /chess

RUN rpm -Uvh https://rpm.nodesource.com/pub_5.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm
RUN yum install nodejs -y
RUN npm install --ignore-scripts --no-optional
CMD node ./lib/server/seedDB.js
CMD node ./lib/server/index.js

EXPOSE 8081
