#! /bin/sh

curl -sSL https://get.docker.com/ | sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker start
sudo docker pull charles5/docker_hadoop
cd ~/
mkdir hadoopshare
docker run -it -v ~/hadoopshare:/root/hadoopshare charles5/docker_hadoop

# remove docker
# sudo apt-get purge docker-engine
# sudo apt-get autoremove --purge docker-engine
# rm -rf /var/lib/docker