FROM ubuntu
MAINTAINER "Bobby Wilson"
RUN apt-get update
RUN apt-get install curl -y
RUN cd /usr/local; curl -O http://nodejs.org/dist/v0.10.16/node-v0.10.16-lin
RUN cd /usr/local; tar xzf node-v0.10.16-linux-x64.tar.gz
ENV PATH /usr/local/bin:/usr/sbin:/bin:/usr/local/node-v0.10.16-linux-x64/bi
ADD . /app
EXPOSE 8000:8000
ENV PORT 8000
CMD ["node", "/app/index.js"]
