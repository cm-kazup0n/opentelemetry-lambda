FROM node:18
RUN apt-get update && \
    apt-get install -y \
    g++ \
    make \
    cmake \
    unzip \
    libcurl4-openssl-dev && \
    npm install -g aws-lambda-ric

COPY ./aws-lambda-rie-arm64 /usr/local/bin/aws-lambda-rie
WORKDIR /app
COPY ./entrypoint.sh entrypoint.sh
COPY ./index.js index.js

ENTRYPOINT [ "/usr/local/bin/aws-lambda-rie", "--runtime-api-address", "0.0.0.0:9001"]
CMD  ["aws-lambda-ric", "index.handler"]
EXPOSE 8000
EXPOSE 9001