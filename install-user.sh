sudo adduser smdermo -G ftpgroup
sudo usemod smdermo -g ftpgroup
cd /home/smdermo
sudo mkdir .ssh
sudo chmod 700 .ssh
sudo ssh-keygen -t rsa  -b 4096 -f .ssh/smdermo.pem -N ''
sudo cat .ssh/smdermo.pem >> .ssh/authorized_keys
sudo chmod 600 .ssh/authorized_keys
sudo chown smdermo:smdermo -R .ssh

mkdir -p /jail/smdermo/data
sudo mount --bind /ftp /jail/smdermo/data
