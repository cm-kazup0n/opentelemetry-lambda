#!/bin/bash

otel-cli server tui \
    --endpoint 0.0.0.0:14317 \
    --traces-endpoint http://0.0.0.0:14318/v1/traces \
    --protocol grpc \
    --verbose