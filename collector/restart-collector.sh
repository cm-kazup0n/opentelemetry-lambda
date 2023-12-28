#!/bin/bash

docker compose down
docker compose up -d
sleep 1
go run main.go