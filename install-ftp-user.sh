sudo groupadd ftpgroup
sudo adduser ftp -G ftpgroup
sudo mkdir /ftp
sudo chown ftp:ftpgroup /ftp
