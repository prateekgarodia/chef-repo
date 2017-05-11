#
# Cookbook Name:: my_second_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello my second cookbook!")
=begin
directory '/root/apache2' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
=end
remote_file node['my_second_oracle_cookbook']['git_download_path'] do
  source node['my_second_oracle_cookbook']['git_source_path']
  action :create
end

execute 'install_git' do
 command "#{node['my_second_oracle_cookbook']['git_download_path']} #{node['my_second_oracle_cookbook']['git_silent_mode']}"
 not_if{File.exists?(node['my_second_oracle_cookbook']['git_install_path'])}
end