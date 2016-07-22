#
# Cookbook Name:: apache2-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['apache']['version'] = node['apache2-install']['version']
node.default['apache']['default_site_port'] = node['apache2-install']['default_site_port']
node.default['apache']['listen']['*'] = node['apache2-install']['listen']['*']
node.default['apache']['timeout'] = node['apache2-install']['timeout']
node.default['apache']['contact'] = node['apache2-install']['contact']
node.default['apache']['default_site_enabled'] = node['apache2-install']['default_site_enabled']


case node['platform_family']
  when 'debian'
    apt_update 'apt update' do
      action :update
    end
end

include_recipe 'apache2::default'	