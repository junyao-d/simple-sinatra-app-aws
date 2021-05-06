#!/bin/bash
aws cloudformation deploy --template-file sinatra-server-launch.yaml --stack-name sinatra-app
