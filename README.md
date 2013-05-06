# platform cookbook

Installs several programming languages that I find useful: C compilers, Ruby (rvm), Python,
Erlang, Go, Node.js, and optionally R and R-Studio

# Requirements

Tested on and developed for Ubuntu 12.10

# Usage

For default languages: 

include_recipe "platform"

For R and R-Studio server
include_recipe "platform::rstudio"

# Attributes

default[:go][:version]  = '1.0.3'
default[:go][:platform] = 'amd64'

# Recipes

# Author

Author:: Sidney Burks (<sid137@gmail.com>)
