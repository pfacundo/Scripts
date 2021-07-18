#! /bin/bash
apt-get update
apt-get install bash-completion sudo openssh-server openssh-client vim openjdk-8-jdk gnupg git curl -y
sudo apt-get update

#Luego se debe agregar un usuario jenkins con pass jenkins
sudo useradd -d /opt/jenkins -U -m -s /bin/bash jenkins
sudo echo "jenkins:jenkins" | sudo chpasswd -m

#permitir al usuario jenkins ejecutar su sin pass
sudo echo "jenkins    ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

#su -u jenkins bash -c "ssh-keygen"
chown -R jenkins:jenkins /opt/jenkins/