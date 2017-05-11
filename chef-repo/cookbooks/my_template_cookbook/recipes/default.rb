#
# Cookbook Name:: my_template_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "ssh" do
  action :nothing
end


template node['my_template_cookbook']['sudoers_path'] do
	source 			node['my_template_cookbook']['sudoers_template']
	owner			node['my_template_cookbook']['owner']
	group			node['my_template_cookbook']['group']
	variables({
			sudoers_groups: node['my_template_cookbook']['sudo']['groups'],
			sudoers_users: node['my_template_cookbook']['sudo']['users'],
			passwordless: node['my_template_cookbook']['passwordless']
		})
end

template node['my_template_cookbook']['server_xml_path'] do
	source 			node['my_template_cookbook']['server_xml_template']
	owner			node['my_template_cookbook']['owner']
	group			node['my_template_cookbook']['group']	
	notifies :restart, 'service[ssh]', :before
end