# rwprecise64

Vagrant image for Ruby and ROR developers. Vagrant uses [Oracle’s VirtualBox](https://www.virtualbox.org/) or [VMware](http://www.vmware.com/) to build configurable, lightweight, and portable virtual machines dynamically.

RWprecise64 contains:

* RVM with compiled ruby 1.9.3-p448, 2.0.0-p247, jruby-1.7.4
* MySQL 5.5.32 and PostgreSQL 9.3.0
* Redis 2.6.16 and Memcached 1.4.13
* Dev libs for pg, mysql2, rmagick, curb and another gems

## How to install

1. Install [Oracle’s VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)
3. Next just execute in terminal:

```bash
$ vagrant box add rwprecise64 http://rwprecise64.catware.org/0.1.2/rwprecise64.box
```

## Credentials

* MySQL:
  * root/vagrant
  * vagrant/vagrant
* PostgreSQL:
  * postgres/vagrant
  * vagrant/vagrant

## Usage

#### Box usage

Basic setup of image:

```bash
$ vagrant init rwprecise64
$ vagrant up
```
Now you can use ssh to login into environment:

```bash
$ vagrant ssh
```

Suspending the environment:

```bash
$ vagrant suspend
```

To resume working:

```bash
$ vagrant resume
```

Halting the environment:

```bash
$ vagrant halt
```

Destroying the environment:

```bash
$ vagrant destroy
```

#### Port forwarding

Port forwarding

Ports form this list are forwarded by default:
```
3000 => 3100
1080 => 1180
```

NOTICE: if you`ll start mailcatcher gem and want to see mailcatcher inbox from outside – don't forget to use `--ip` option.