#!/bin/bash
NAME=next-app
docker rm -f $NAME
docker run -it -d \
    -p 4009:4002 \
    -v $(pwd):/usr/src/app \
    -w /usr/src/app \
    --restart=always \
    --name $NAME \
    node:20-alpine sh -c "node server.js"