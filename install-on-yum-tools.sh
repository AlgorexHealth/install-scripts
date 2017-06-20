sudo yum -y update
yum install tree
yum install tmux
yum install git
yum install curl

curl -L https://github.com/reverendpaco/vimrc/archive/master.tar.gz | tar xzv && mv vimrc-master .vim
