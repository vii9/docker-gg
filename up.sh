#!/bin/bash
set -e

# create folder mysqldb
if ! [[ -d ./data/db ]]; then
    mkdir -p ./data/db
fi

# create folder logs mysql57
if ! [[ -d ./data/logs/mysql57 ]]; then
    mkdir -p ./data/logs/mysql57
fi

# create folder logs nginx
if ! [[ -d ./data/logs/nginx ]]; then
    mkdir -p ./data/logs/nginx
fi

docker-compose up -d --build
