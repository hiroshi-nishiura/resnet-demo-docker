#!/bin/bash
nvidia-docker run --rm -d --name resnet-demo -p 1880:1880 -v $(pwd)/lib:/root/lib -e NODE_PATH=/usr/lib/node_modules resnet-demo node-red -s /root/settings.js -u /root
