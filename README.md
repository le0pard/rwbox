# RWBox

Vagrant images for Ruby and ROR developers. Vagrant uses [Oracle’s VirtualBox](https://www.virtualbox.org/) or [VMware](http://www.vmware.com/) to build configurable, lightweight, and portable virtual machines dynamically.

RWBox contains:

* RVM with compiled Ruby 2.0.0-p645, 2.1.6, 2.2.2
* MySQL, PostgreSQL, Redis and Memcached
* Dev libs for pg, mysql2, rmagick, curb and another gems

## How to install

1. Install [Oracle’s VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)
3. Next just execute in terminal commands:

### Ubuntu 14.04

```bash
$ vagrant init leopard/rwtrusty64
```

OR (for Vagrant < 1.5):

```bash
$ vagrant box add rwtrusty64 http://rwbox.catware.org/rwtrusty64/0.2.3/rwtrusty64.box
```

### Ubuntu 12.04

```bash
$ vagrant init leopard/rwprecise64
```

OR (for Vagrant < 1.5):

```bash
$ vagrant box add rwprecise64 http://rwbox.catware.org/rwprecise64/0.2.3/rwprecise64.box
```

## Credentials

* MySQL:
  * root/vagrant
  * vagrant/vagrant
* PostgreSQL:
  * postgres/vagrant
  * vagrant/vagrant

## Usage

### Box usage

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

### Port forwarding

Ports form this list are forwarded by default:

```
3000 => 3100
1080 => 1180
```

NOTICE: if you'll start mailcatcher gem and want to see mailcatcher inbox from outside – don't forget to use `--ip` option.

# Development

Box setuped by Chef-Solo. For creating package you can use command:

```bash
$ vagrant package --output rwtrusty64.box --vagrantfile Vagrantfile.box
// or
$ vagrant package --output rwprecise64.box --vagrantfile Vagrantfile.box
```