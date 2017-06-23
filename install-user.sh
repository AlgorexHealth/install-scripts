sudo adduser smdermo -G ftpgroup
sudo moduser smdermo -g ftpgroup
cd /home/smdermo
mkdir .ssh
chmod 700 .ssh
ssh-keygen -t rsa  -b 4096 -f .ssh/smdermo.pem -N ''
cat .ssh/smdermo.pem >> .ssh/authorized_keys
chmod 600 .ssh/authorized_keys
chown smdermo:smdermo -R .ssh

mkdir -p /jail/smdermo/data
sudo mount --bind /ftp /jail/smdermo/data
