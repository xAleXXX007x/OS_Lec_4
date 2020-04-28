#!/bin/bash

git clone https://gitlab.com/romanov73/example-jpa
./example-jpa/gradlew build
docker build -t lab -f dockerfile .
systemctl stop postgresql-12
docker run lab
