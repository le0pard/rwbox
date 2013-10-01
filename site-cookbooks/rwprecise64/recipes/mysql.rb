include_recipe "database::mysql"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
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