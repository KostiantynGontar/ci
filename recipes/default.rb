#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

package "vim" do
  action :install
end

include_recipe "java"
include_recipe "jenkins::master" 
