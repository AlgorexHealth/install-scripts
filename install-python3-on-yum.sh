sudo yum -y update
sudo yum -y install yum-utils
sudo yum -y groupinstall development
sudo yum -y install https://centos6.iuscommunity.org/ius-release.rpm
sudo yum -y install python36u-pip
sudo yum -y install python36u-devel

   56  python3.6 -m venv demo
   57  source demo/bin/activate
   60  pip3 install -r requirements.txt 
   62  jupyter nbextension enable --py --sys-prefix widgetsnbextension
   63  jupyter contrib nbextension install --user

   70  jupyter notebook --ip=0.0.0.0 --no-browser  --NotebookApp.token=''
