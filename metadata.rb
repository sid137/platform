name             "platform"
maintainer       "Sidney Burks"
maintainer_email "sid137@gmail.com"
license          "All rights reserved"
description      "Installs/Configures platform"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends 'apt'
depends 'server-essentials'
depends 'minitest-handler'
depends 'golang'
depends 'nodejs'
depends 'erlang'
depends 'rbenv'
depends 'ruby_build'
