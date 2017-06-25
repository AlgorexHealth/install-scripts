sudo groupadd ftpgroup
sudo adduser concierge -G ftpgroup
sudo mkdir /ftp
sudo chown concierge:ftpgroup /ftp

sudo sh -c 'cat >> /etc/ssh/sshd_config <<HERE

AuthenticationMethods "publickey,keyboard-interactive"

Match Group ftpgroup
        ChrootDirectory /jail/%u
        ForceCommand internal-sftp
        AllowTcpForwarding no
HERE'
sudo sed -i 's/^Subsystem sftp.*$/Subsystem sftp       internal-sftp/g' /etc/ssh/sshd_config
sudo sed -i 's/^ChallengeResponseAuthentication.*$/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#.*user_allow_other.*$/user_allow_other/g' /etc/fuse.conf 

sudo usermod -p `openssl passwd ec2-user` ec2-user
sudo service  sshd restart


