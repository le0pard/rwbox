package "curl"
package "virtualbox-guest-utils"

gpg_keyserver = 'hkp://keys.gnupg.net'
gpg_key = '409B6B1796C275462A1703113804BB82D39DC0E3'

execute 'Adding gpg key' do
  environment ({"HOME" => "/root", "USER" => "root"})
  command "`which gpg2 || which gpg` --keyserver #{gpg_keyserver} --recv-keys #{gpg_key}"
  only_if 'which gpg2 || which gpg'
  not_if { gpg_key.empty? }
  not_if "`which gpg2 || which gpg` --list-keys | fgrep #{gpg_key}"
end

=begin
script "update chef" do
  code <<-EOH
  /opt/vagrant_ruby/bin/gem install chef --no-rdoc --no-ri
  EOH
  cwd  "/tmp"
  interpreter "bash"
  user "root"
  action :run
end
=end