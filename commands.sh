#!/bin/sh
# working on AMI Linux image x86_64

# enable epel repo
sudo yum install patch
patch /etc/yum.repos.d/epel.repo epel.repo.patch

# install tools
sudo yum install tmux
sudo yum install git

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

# scalatra example
## mkdir ~/scalatra
## cd ~/scalatra
## g8 scalatra/scalatra-sbt
### default value
## cd  scalatra-sbt-prototype
## sbt
### > container:start & access with http port 8080






