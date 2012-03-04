#!/bin/sh
# working on AMI Linux image

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


