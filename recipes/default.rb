#
# Cookbook Name:: platform
# Recipe:: default
#
# Copyright (C) 2013 Sidney Burks
# 
# All rights reserved - Do Not Redistribute


include_recipe "server-essentials"
include_recipe "platform::postgresql"
include_recipe "platform::ruby"
include_recipe "platform::passenger"
include_recipe "erlang"
include_recipe "golang"
include_recipe "nodejs"
include_recipe "nodejs::npm"

execute "apt-get upgrade -f -y"
