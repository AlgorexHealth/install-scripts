sudo adduser smdermo -G ftpgroup
sudo usermod smdermo -g ftpgroup
sudo mkdir /home/smdermo/.ssh
sudo chmod 700 /home/smdermo/.ssh
sudo ssh-keygen -t rsa  -b 4096 -f /home/smdermo/.ssh/smdermo.pem -N ''
sudo cat /home/smdermo/.ssh/smdermo.pem.pub >> /home/smdermo/.ssh/authorized_keys
sudo chmod 600 /home/smdermo/.ssh/authorized_keys
sudo chown smdermo:smdermo -R /home/smdermo/.ssh

mkdir -p /jail/smdermo/data
sudo mount --bind /ftp /jail/smdermo/data
