#
# Cookbook Name:: cloudyus
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "ruby"
#include_recipe "cloudyus::rvm"
include_recipe "mongodb"
include_recipe "cloudyus::packages"
include_recipe "nvm"
include_recipe "rvm"
include_recipe "rbenv"
include_recipe "cloudyus::gems"

#install nodejs v0.12.4
nvm_install '0.12.4'  do
    from_source false
    alias_as_default true
    action :create
end

#Install rails 4.2.2
gem_package 'rails' do
  version '4.2.2'
  action :install
end
