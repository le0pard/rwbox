# rwprecise64

Vagrant image for Ruby and ROR developers. Vagrant uses [Oracle’s VirtualBox](https://www.virtualbox.org/) or [VMware](http://www.vmware.com/) to build configurable, lightweight, and portable virtual machines dynamically.

RWprecise64 contains:

* RVM with compiled ruby 1.9.3-p448, 2.0.0-p247, jruby-1.7.4
* MySQL 5.5.32 and PostgreSQL 9.3.0
* Redis 2.6.16 and Memcached
* Dev libs

## How to install

1. Install [Oracle’s VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)
3. Next just execute in terminal:

```bash
$ vagrant box add rwprecise64 http://dl.dropbox.com/u/83704794/vagrant/rwprecise64.box
```

## Usage

Basic setup:

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