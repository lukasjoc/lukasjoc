#!/bin/bash

#docker build -t lukasjoc:debug -f docker/Dockerfile .
#docker run --name lukasjoc_container -d -p 1313:80 lukasjoc:debug

if ! [ -d node_modules ]; then
  npm install
fi

npm run serve