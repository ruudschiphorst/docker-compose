#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

export POSTGRES_PASS='changeme'
export KEYSTORE_PASS='changeme'
export JWT_SIGNING_KEY='changeme'

docker-compose up --build --force-recreate -d

