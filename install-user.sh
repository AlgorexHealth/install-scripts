sudo adduser smdermo -G ftpgroup
sudo usermod -g ftpgroup smdermo
sudo mkdir /home/smdermo/.ssh
sudo chmod 700 /home/smdermo/.ssh
sudo ssh-keygen -t rsa  -b 4096 -f /home/smdermo/.ssh/smdermo.pem -N ''
sudo sh -c 'cat /home/smdermo/.ssh/smdermo.pem.pub >> /home/smdermo/.ssh/authorized_keys'
sudo chmod 600 /home/smdermo/.ssh/authorized_keys
sudo chown smdermo:smdermo -R /home/smdermo/.ssh

sudo mkdir -p /jail/smdermo/data
sudo chown smdermo:smdermo /jail/smdermo/data
sudo mount --bind /ftp /jail/smdermo/data
