#
# Cookbook Name:: my_version_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Version 0.1.1")

run_context.cookbook_collection.each do |key, cookbook|
	node.default['my_cookbook'][cookbook.name] = cookbook.name
	node.default['my_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
	Chef::Log.info("I am in version #{node['my_cookbook']['cookbook_versions'][cookbook.name]} for Cookbook #{node['my_cookbook'][cookbook.name]}")
end


cookbook_file node['my_version_cookbook']['config_path'] do
  source 'config.txt'
  owner node['my_version_cookbook']['owner']
  group node['my_version_cookbook']['group']
  mode '0755'
  action :create
end

file node['my_version_cookbook']['file_path'] do
  content "I'm file resource new again"
  mode '0755'
  owner node['my_version_cookbook']['owner']
  group node['my_version_cookbook']['group']
  # action :create_if_missing
end