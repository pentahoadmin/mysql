#############################################################################
# Cookbook Name:: mysql
# Recipe:: hadoopdb
#
# Copyright 2017, Pentaho, A Hitachi Group Company
#
# All rights reserved - Do Not Redistribute
#############################################################################
mysql_database_user node['mysql']['hadoopdb']['hadoopdb_username'] do
  connection ({:host => 'localhost', :username => 'root', :password => node['mysql']['server_root_password']})
  password node['mysql']['hadoopdb']['hadoopdb_password']
  database_name node['mysql']['hadoopdb']['database']
  privileges [:select,:update,:insert,:create,:delete]
  action :grant
end
