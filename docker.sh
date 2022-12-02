#! /bin/bash
sudo apt udate
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker azure
sudo chown azure:azure /var/run/docker.sock
sudo systemctl enable docker.service
sudo systemctl start docker
docker info
docker container run hello-world
docker container image pull openjdk:20-slim-buster
