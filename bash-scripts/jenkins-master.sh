#! /bin/bash

apt-get update

apt-get install bash-completion sudo openssh-server openssh-client vim openjdk-8-jdk gnupg -y

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

sudo apt-get install jenkins -y