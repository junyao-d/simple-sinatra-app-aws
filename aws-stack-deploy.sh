#!/bin/bash
aws cloudformation deploy --template-file ec2-launch-userdata.yaml --stack-name sinatra-app
