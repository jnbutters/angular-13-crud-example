#!/bin/bash
ng build --prod 
docker build  -f Dockerfile -t frontend .
docker tag frontend jnbutters/frontend:2.0
docker push jnbutters/frontend:2.0