FROM centos:7


RUN mkdir /chess
COPY . /chess
WORKDIR /chess

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install nodejs -y
RUN npm install
RUN npm run build
CMD node ./lib/server/seedDB.js
CMD npm start & npm run client

EXPOSE 8080
EXPOSE 8081
