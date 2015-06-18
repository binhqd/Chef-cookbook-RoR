#
# Cookbook Name:: cloudyus
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "Import GPG key" do
  command "sudo gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3"
end

execute "Installing Ruby Version Manager" do
  command "curl -sSL https://get.rvm.io | bash -s stable --quiet-curl --ruby=1.9.3"
  not_if { ::File.exists?("/etc/profile.d/rvm.sh")}
end

execute "Setup RVM Environment" do
  command "source /etc/profile.d/rvm.sh"
  action :nothing
end
