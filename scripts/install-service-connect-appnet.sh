#!/usr/bin/env bash
set -ex

sudo yum install -y ecs-service-connect-agent

sudo systemctl start docker
sudo docker load < /var/lib/ecs/deps/serviceconnect/ecs-service-connect-agent.interface-v1.tar
