package "curl"
package "virtualbox-guest-utils"
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