#
# Cookbook Name:: platform
# Recipe:: default
#
# Copyright (C) 2013 Sidney Burks
# 
# All rights reserved - Do Not Redistribute


include_recipe "server-essentials"

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
rbenv_ruby '2.0.0-p0' do
  global true
end

include_recipe "erlang"
include_recipe "golang"
include_recipe "nodejs"
include_recipe "nodejs::npm"
