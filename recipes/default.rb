#
# Cookbook Name:: platform
# Recipe:: default
#
# Copyright (C) 2013 Sidney Burks
# 
# All rights reserved - Do Not Redistribute


include_recipe "server-essentials"
include_recipe "erlang"
include_recipe "golang"
include_recipe "nodejs"
include_recipe "nodejs::npm"

include_recipe "platform::rstudio"
# include_recipe "rvm::system"
# include_recipe "rvm::vagrant"
