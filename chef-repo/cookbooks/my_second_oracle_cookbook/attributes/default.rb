default['my_second_oracle_cookbook']['test_value'] = "I'm just a test value!"

default['my_second_oracle_cookbook']['git_installer_name'] = "Git-2.12.2.2-64-bit.exe"
default['my_second_oracle_cookbook']['git_download_path'] = "D:/Personal/Workspace/Chef-Training/chef-starter/installs/#{node['my_second_oracle_cookbook']['git_installer_name']}"
default['my_second_oracle_cookbook']['git_source_path'] = "https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['my_second_oracle_cookbook']['git_installer_name']}"
default['my_second_oracle_cookbook']['git_silent_mode'] = "/SILENT"
default['my_second_oracle_cookbook']['git_install_executable_name'] = "git.exe"
default['my_second_oracle_cookbook']['git_install_path'] = "C:/Program Files/Git/bin/#{node['my_second_oracle_cookbook']['git_install_executable_name']}"