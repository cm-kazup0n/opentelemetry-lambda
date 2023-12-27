FROM node:18
COPY ./aws-lambda-rie-arm64 /usr/local/bin/aws-lambda-rie
COPY ./entrypoint.sh /entrypoint.sh
COPY ./index.js /index.js
RUN apt-get update && \
    apt-get install -y \
    g++ \
    make \
    cmake \
    unzip \
    libcurl4-openssl-dev && \
    npm install -g aws-lambda-ric
ENTRYPOINT [ "/usr/local/bin/aws-lambda-rie", "--runtime-api-address", "0.0.0.0:9001", "aws-lambda-ric", "/index.handler"]
EXPOSE 8000
EXPOSE 9001