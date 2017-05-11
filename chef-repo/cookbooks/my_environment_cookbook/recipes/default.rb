#
# Cookbook Name:: my_environment_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("I'm verion #{node["my_environment_cookbook"]["version"]}")
Chef::Log.info("I'm verion #{node["my_environment_cookbook"]["data"]}")