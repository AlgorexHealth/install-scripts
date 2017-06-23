sudo adduser $1 -G ftpgroup
sudo usermod -g ftpgroup $1
sudo mkdir /home/$1/.ssh
sudo chmod 700 /home/$1/.ssh
sudo ssh-keygen -t rsa  -b 4096 -f /home/$1/.ssh/$1.pem -N ''
sudo sh -c 'cat /home/'$1'/.ssh/'$1'.pem.pub >> /home/'$1'/.ssh/authorized_keys'
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown $1:$1 -R /home/$1/.ssh

sudo mkdir -p /jail/$1/data
sudo chown concierge:ftpgroup /jail/$1/data
sudo mount --bind /ftp /jail/$1/data

ahh=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8 ; echo ''`
sudo usermod -p `openssl passwd $ahh` $1
echo $ahh
sudo chage -d 0 $1
