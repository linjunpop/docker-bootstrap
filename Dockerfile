FROM ubuntu:12.04
MAINTAINER Jun Lin, linjunpop@gmail.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# install essentials
RUN apt-get install -y curl wget
RUN apt-get install -y build-essential git-core

# install chruby
RUN wget -O chruby-0.3.7.tar.gz https://github.com/postmodern/chruby/archive/v0.3.7.tar.gz
RUN tar -xzvf chruby-0.3.7.tar.gz
RUN cd chruby-0.3.7/ && make install

# install ruby-install
RUN wget -O ruby-install-0.3.2.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.2.tar.gz
RUN tar -xzvf ruby-install-0.3.2.tar.gz
RUN cd ruby-install-0.3.2/ && make install

# install ruby 2.0.0
RUN ruby-install ruby 2.0.0

