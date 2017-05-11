#
# Cookbook Name:: java_9e
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.default['java_9e']['base_current_version'] = "167"
# resource_file node['java_9e']['download_path'] do
# 	source node['java_9e']['source_path']
# 	headers({"Cookie" => node['java_9e']['accept_cookie']})
# 	action :create
# end

Chef::Log.info(node['java_9e']['download_path'])
Chef::Log.info(node['java_9e']['source_path'])

# Works for First Run and override are done
# Stores in OHAI for each Node
# Next run alway print the overriden value
Chef::Log.info(node['java_9e_dependents']['default'])
node.default!['java_9e_dependents']['default'] = "Child Force default from Parents"

Chef::Log.info(node['java_9e_dependents']['default'])
node.normal['java_9e_dependents']['default'] = "Child Normal from Parents"

Chef::Log.info(node['java_9e_dependents']['default'])
node.override['java_9e_dependents']['default'] = "Child override from Parents"

Chef::Log.info(node['java_9e_dependents']['default'])
node.override!['java_9e_dependents']['default'] = "Child force_override from Parents"