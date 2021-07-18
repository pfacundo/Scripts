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
                                                                                                                         
#sudo echo 'configurando timezone'                                                                                       
                                                                                                                         
#export UBUNTU_FRONTEND=noninteractive                                                                                   
                                                                                                                         
#ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime                                                              
#apt-get install -y tzdata                                                                                               
#dpkg-reconfigure --frontend noninteractive tzdata                                                                       
                                                                                                                         
sudo echo 'Instalando dependencias'                                                                                      
sudo apt install -y sudo git unzip nodejs npm                                                                       
sudo apt-get install -y postgresql-client php7.2 php7.2-mbstring php7.2-pgsql php7.2-curl php7.2-xml php-cli php7.2-fpm
                                                                                                                         
echo 'uninstalling apache2 and dependences for apache'                                                                   
sudo apt-get purge -y apache2 && sudo apt-get clean && sudo apt-get -y autoremove                                        
                                                                                                                         
echo "Installing nginx, starting and check status"                                                                       
sudo apt install -y nginx                                                                                                
sudo service nginx start                                                                                                 
sudo service --status-all                                                                                                
                                                                                                                         
echo 'downloading and installing composer'                                                                               
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer                