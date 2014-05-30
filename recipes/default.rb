#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

node['ci']['package_list'].each do |pkg|
  package pkg do
    action :install
  end
end

include_recipe "java"
include_recipe "jenkins::master" 
include_recipe "git"
include_recipe "ant"
