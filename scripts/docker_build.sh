#!/bin/bash

docker build -t mynameismana-website .
docker tag mynameismana-website:latest 656288215726.dkr.ecr.us-east-1.amazonaws.com/mynameismana-website:latest
#docker push 656288215726.dkr.ecr.us-east-1.amazonaws.com/mynameismana-website:latest

exit 0
