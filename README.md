# Docker bootstrap

### Setup

```bash
$ vagrant up
$ vagrant ssh
$ sudo apt-get update
$ sudo apt-get install linux-image-generic-lts-raring linux-headers-generic-lts-raring
$ sudo reboot
```

### Install docker

```bash
$ vagrant ssh
$ sudo sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"
$ sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
$ sudo apt-get update
$ sudo apt-get install lxc-docker
$ sudo reboot
```

### Build

```bash
$ vagrant ssh
$ cd /vagrant
$ sudo docker build -t linjunpop/bootstrap .
```

