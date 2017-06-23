sudo groupadd ftpgroup
sudo adduser concierge -G ftpgroup
sudo mkdir /ftp
sudo chown concierge:ftpgroup /ftp
sudo su concierge

s3fs -o iam_role='MPHC-DataConcierge'  algorex-mphc-s3-secure  /ftp -d -d -f -o f2 -o curldbg -o endpoint="us-gov-west-1"  -o url=https://s3-us-gov-west-1.amazonaws.com -o use_sse=kmsid:'arn:aws-us-gov:kms:us-gov-west-1:395322614640:key/f6f248b0-d1b3-420f-a8b4-aed46d31ed89'
