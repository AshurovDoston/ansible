#!/bin/sh

docker build --build-arg BUILD_DATE=`date -u +”%Y-%m-%dT%H:%M:%SZ”` \
             --build-arg ANSIBLE_VERSION=${ANSIBLE_VERSION:=2.6.6} \
             -t ${IMAGE_NAME:=ansible-alpine:2.6.6} .
# docker tag ansible-alpine:2.6.6 ansible-alpine:latest


docker build --build-arg BUILD_DATE=`date -u +”%Y-%m-%dT%H:%M:%SZ”` \
             --build-arg ANSIBLE_VERSION=${ANSIBLE_VERSION:=2.7.7} \
             -t ${IMAGE_NAME:=ansible-alpine:2.7.7} .
