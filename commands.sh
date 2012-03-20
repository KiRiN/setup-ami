#!/bin/sh
# working on AMI Linux image x86_64

# enable epel repo
yum install patch
patch /etc/yum.repos.d/epel.repo epel.repo.patch

# install tools
yum install tmux
yum install git

# settings
cp .tmux.conf ~/.tmux.conf

# install nginx
yum install nginx

# install mongodb
# error occurred when I try to install from epel repo
cp 10gen.repo /etc/yum.repos.d/10gen.repo
yum install mongo-10gen mongo-10gen-server

# install sbt
rpm -ivh http://rpm.typesafe.com/typesafe-repo-2.0.0-1.noarch.rpm
yum install --nogpgcheck sbt
sbt

# install scalatra
git clone http://github.com/scalatra/scalatra-sbt-prototype.git ~/scalatra-sbt-prototype.git




