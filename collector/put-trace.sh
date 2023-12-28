#!/bin/bash
# otel-cli exec  \
#     --endpoint 0.0.0.0:14317 \
#     --traces-endpoint http://0.0.0.0:14318/v1/traces \
#     --protocol grpc \
#     --verbose \
#     --service my-service \
#     --name "curl google" \
#     curl https://google.com

 otel-cli exec  \
     --endpoint 0.0.0.0:4317 \
     --traces-endpoint http://0.0.0.0:4318/v1/traces \
     --protocol grpc \
     --verbose \
     --service my-service \
     --name "curl google" \
     curl https://google.com
