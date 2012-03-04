#!/bin/sh
# working on AMI Linux image

yum install git
yum install patch

# enable epel repo
patch /etc/yum.repos.d/epel.repo epel.repo.patch


