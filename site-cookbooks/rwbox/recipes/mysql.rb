mysql_service 'default' do
  bind_address node[:mysql][:bind_address]
  initial_root_password node[:mysql][:server_root_password]
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

mysql2_chef_gem 'default' do
  action :install
end

mysql_connection_info = {
  :host     => '127.0.0.1',
  :username => 'root',
  :password => node['mysql']['server_root_password'],
  :socket => "/var/run/mysql-default/mysqld.sock"
}

mysql_database_user node['db_credentials']['username'] do
  connection mysql_connection_info
  password   node['db_credentials']['password']
  action     :create
end

mysql_database node['db_credentials']['name'] do
  connection mysql_connection_info
  owner node['db_credentials']['username']
  action :create
end