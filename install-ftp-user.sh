sudo groupadd ftpgroup
sudo adduser concierge -G ftpgroup
sudo mkdir /ftp
sudo chown concierge:ftpgroup /ftp
