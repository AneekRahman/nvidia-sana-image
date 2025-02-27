#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 999009443819.dkr.ecr.us-east-1.amazonaws.com

docker pull 999009443819.dkr.ecr.us-east-1.amazonaws.com/lumico/nvidia-sana-image:latest

docker run -d -p 80:5000 --gpus all 999009443819.dkr.ecr.us-east-1.amazonaws.com/lumico/nvidia-sana-image:latest