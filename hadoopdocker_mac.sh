#! /bin/sh

brew cask install docker
docker pull charles5/docker_hadoop
cd ~/
mkdir hadoopshare
docker run -it -v ~/hadoopshare:/root/hadoopshare charles5/docker_hadoop