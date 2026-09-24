#!/bin/bash
set -e

docker run -d --name my-nginx nginx
docker exec my-nginx ls -la /usr/share/nginx/html
docker logs my-nginx
docker run -d --name my-nginx-2 nginx

docker stop my-nginx my-nginx-2
docker rm my-nginx my-nginx-2
