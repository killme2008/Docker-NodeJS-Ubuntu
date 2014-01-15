FROM ubuntu:12.10
RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

ADD ./src /src
RUN cd /src; npm install
EXPOSE  8080
CMD ["node", "/src/index.js"]
