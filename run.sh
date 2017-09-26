#!/bin/bash
docker run --rm -d -p 1881:1880 -v $(pwd)/lib:/root/lib -e NODE_PATH=/usr/lib/node_modules resnet-demo-cpu node-red -s /root/settings.js -u /root
