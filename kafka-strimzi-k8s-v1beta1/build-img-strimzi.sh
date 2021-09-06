#! /usr/bin/env bash

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 296188739650.dkr.ecr.us-east-2.amazonaws.com

docker build -t rafael-repository .

docker tag rafael-repository:latest 296188739650.dkr.ecr.us-east-2.amazonaws.com/rafael-repository:latest

docker push 296188739650.dkr.ecr.us-east-2.amazonaws.com/rafael-repository:latest