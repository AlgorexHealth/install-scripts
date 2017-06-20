sudo yum -y update
sudo yum install -y tree
sudo yum install -y tmux
sudo yum install -y git
sudo yum install -y curl

curl -L https://github.com/reverendpaco/vimrc/archive/master.tar.gz | tar xzv && mv vimrc-master .vim
curl -L  https://github.com/AlgorexHealth/install-scripts/archive/master.tar.gz | tar xzv && mv install-scripts-master/.tmu* . && mv install-scripts-master/tmu* .

./tmux-session.sh restore
