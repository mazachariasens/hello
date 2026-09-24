#!/bin/bash
set -e

docker run -d --name my-nginx nginx
docker exec my-nginx ls -la /usr/share/nginx/html
