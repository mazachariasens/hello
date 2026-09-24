#!/bin/bash
set -e

docker run -d --name my-nginx nginx
docker exec my-nginx ls -la /usr/share/nginx/html
docker logs my-nginx
docker run -d --name my-nginx-2 nginx
