postgresql_connection_info = {
  :host     => '127.0.0.1',
  :port     => node['postgresql']['config']['port'],
  :username => 'postgres',
  :password => node['postgresql']['password']['postgres']
}

postgresql_database_user node['db_credentials']['username'] do
  connection postgresql_connection_info
  password   node['db_credentials']['password']
  action     :create
end

postgresql_database node['db_credentials']['name'] do
  connection postgresql_connection_info
  owner node['db_credentials']['username']
  action :create
end