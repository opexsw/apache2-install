#
# Cookbook Name:: apache2-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



case node['platform_family']
  when 'debian'
    apt_update 'apt update' do
      action :update
    end
end

include_recipe 'apache2::default'	