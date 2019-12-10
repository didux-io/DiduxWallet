#!/bin/bash

$(aws ecr get-login --no-include-email --region eu-west-1)

npm run build:web

docker build -t didux/wallet:test -f Dockerfile .
docker tag didux/wallet:test 462619610638.dkr.ecr.eu-central-1.amazonaws.com/didux/wallet:test
docker push 462619610638.dkr.ecr.eu-central-1.amazonaws.com/didux/wallet:test