#!/bin/bash

docker run -d --name dockerkirby -p 80:80 \
  --mount type=bind,source=$(pwd)/starterkit,destination=/var/www/html \
  --env USERID=$(id -u) docker-starterkit