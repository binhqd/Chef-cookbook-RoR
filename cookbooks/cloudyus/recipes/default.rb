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
