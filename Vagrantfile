# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'json'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "leopard/rwtrusty64"
  #config.vm.box = "ubuntu/trusty64"
  #config.vm.box = "ubuntu/precise64"
  #config.vm.box_url = "http://rwprecise64.catware.org/0.2.3/rwprecise64.box"

  VAGRANT_JSON = JSON.parse(Pathname(__FILE__).dirname.join('nodes', 'vagrant.json').read)

  config.vm.provision :chef_solo do |chef|
    chef_gem_path    = "/opt/chef/embedded/lib/ruby/gems/1.9.1"
    chef.binary_env  = "GEM_PATH=#{chef_gem_path} GEM_HOME=#{chef_gem_path}"
    chef.binary_path = "/opt/chef/bin"
    chef.cookbooks_path = ["site-cookbooks", "cookbooks"]
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.provisioning_path = "/tmp/vagrant-chef"
    chef.run_list = VAGRANT_JSON.delete('run_list') if VAGRANT_JSON['run_list']
    chef.json = VAGRANT_JSON
  end

end
