#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe "freebsd" if platform?("freebsd")

package "vim" do
  action :install
end
