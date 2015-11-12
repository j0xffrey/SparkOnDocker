# Base Centos lastest
#

FROM centos

MAINTAINER joffrey origingod.oh@gmail.com

VOLUME ["/data"]

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

ADD http://mirrors.163.com/.help/CentOS7-Base-163.repo /etc/yum.repos.d/CentOS7-Base-163.repo

RUN yum update -y
RUN yum upgrade -y
RUN yum install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server iputils-ping python2.7
