#!/bin/sh
# working on AMI Linux image x86_64

# install and enable epel repo
sudo yum install patch
sudo patch /etc/yum.repos.d/epel.repo epel.repo.patch

# install and disable rpm forge repo
sudo rpm -ivh http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.1-1.el5.rf.x86_64.rpm
sudo patch /etc/yum.repos.d/rpmforge.repo rpmforge.repo.patch

# install tools
sudo yum install tmux
sudo yum install git
sudo yum install make
sudo yum install gcc
sudo yum install ctags

# git settings
mkdir ~/git
git config --global user.name "Matsushima Hiroki"
git config --global user.mailaddress "matsushima.hiroki@mail.address.dummy"

# settings
cp .tmux.conf ~/.tmux.conf

# install nginx
sudo yum install nginx

# install mongodb
# error occurred when I try to install from epel repo
sudo cp 10gen.repo /etc/yum.repos.d/10gen.repo
sudo yum install mongo-10gen mongo-10gen-server

# install sbt
sudo rpm -ivh http://rpm.typesafe.com/typesafe-repo-2.0.0-1.noarch.rpm
sudo yum install --nogpgcheck sbt
sbt

# conscript & giter8
curl https://raw.github.com/n8han/conscript/master/setup.sh | sh
cs n8han/giter8
# below comand raise error
# cs harrah/xsbt --branch 0.11.2

# scalatra example
## mkdir ~/scalatra
## cd ~/scalatra
## g8 scalatra/scalatra-sbt
### default value
## cd  scalatra-sbt-prototype
## sbt
### > container:start & access with http port 8080

# make swap
sudo dd if=/dev/zero of=/var/swapfile bs=1M count=2048 &&
sudo chmod 600 /var/swapfile &&
sudo mkswap /var/swapfile &&
echo /var/swapfile none swap defaults 0 0 | sudo tee -a /etc/fstab &&
sudo swapon -a




