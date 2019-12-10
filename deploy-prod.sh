#!/bin/bash

$(aws ecr get-login --no-include-email --region eu-west-1)

npm run build:web

docker build -t didux/wallet:latest -f Dockerfile .
docker tag didux/wallet:latest 462619610638.dkr.ecr.eu-central-1.amazonaws.com/didux/wallet:latest
docker push 462619610638.dkr.ecr.eu-central-1.amazonaws.com/didux/wallet:latest