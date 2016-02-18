#
# Cookbook Name:: mem-consumption
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#chef_gem 'syslog-logger'


include_recipe 'chef-client::config'
include_recipe 'rsyslog'
include_recipe 'sysctl'
include_recipe 'ark'
hostsfile_entry '2.3.4.5' do
  hostname  'www.example.com'
  unique    true
end
include_recipe 'selinux'
include_recipe 'ntp'
#include_recipe 'sudo'
include_recipe 'git'
#include_recipe 'runit'
include_recipe 'apt'
include_recipe 'java'
include_recipe 'apache2'
include_recipe 'yum'
include_recipe 'chef-client'
#include_recipe 'firewall'
#include_recipe 'users'
include_recipe 'nodejs'
include_recipe 'openssl'
include_recipe 'postfix'
include_recipe 'cron'
include_recipe 'logrotate'
include_recipe 'vim'

gem_package 'chef-sugar'
gem_package 'chef-vault'
gem_package 'syslog-logger'
gem_package 'json'

#resources(gem_package: 'chef-sugar').action :nothing
#resources(gem_package: 'dogapi').action :nothing
