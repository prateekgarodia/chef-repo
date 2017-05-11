# default['my_template_cookbook']['sudoers'] = "sudoers"
# default['my_template_cookbook']['sudoers_template'] = "sudoers.erb"
default['my_template_cookbook']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin', 'dba', 'oracle' ]
default['my_template_cookbook']['sudo']['users']  = [ 'jerry', 'greg', 'prateek', 'ruchika']
default['my_template_cookbook']['passwordless']  = true

default['my_template_cookbook']['sudoers'] = "sudoers.txt"
default['my_template_cookbook']['sudoers_template'] = "sudoers.txt.erb"

if node['platform'] == "windows"
	default['my_template_cookbook']['sudoers_path'] = "D:/Personal/Workspace/Chef-Training/chef-starter/junk/#{node['my_template_cookbook']['sudoers']}"
	default['my_template_cookbook']['owner'] = "administrator"
	default['my_template_cookbook']['group'] = "administrator"
elsif node['platform'] == "ubuntu" || node['platform'] == "oracle"
	default['my_template_cookbook']['sudoers_path'] = "/root/#{node['my_template_cookbook']['sudoers']}"
	default['my_template_cookbook']['owner'] = "root"
	default['my_template_cookbook']['group'] = "root"
end

default['my_template_cookbook']['connector1']['port'] = "8080"
default['my_template_cookbook']['connector1']['redirectport']  = "8443"
default['my_template_cookbook']['connector1']['connection_timeout']  = "20000"
default['my_template_cookbook']['connector1']['protocol']  = "HTTP/1.1"

default['my_template_cookbook']['connector2']['port'] = "8009"
default['my_template_cookbook']['connector2']['redirectport']  = "8443"
default['my_template_cookbook']['connector2']['connection_timeout']  = ""
default['my_template_cookbook']['connector2']['protocol']  = "AJP/1.3"

default['my_template_cookbook']['server_xml'] = "server.xml"
default['my_template_cookbook']['server_xml_template'] = "server.xml.erb"
if node['platform'] == "windows"
	default['my_template_cookbook']['server_xml_path'] = "D:/Personal/Workspace/Chef-Training/chef-starter/junk/#{node['my_template_cookbook']['server_xml']}"
elsif node['platform'] == "ubuntu" || node['platform'] == "oracle"
	default['my_template_cookbook']['server_xml_path'] = "/root/#{node['my_template_cookbook']['server_xml']}"
end