# execute "echo 'deb http://apt.postgresql.org/pub/repos/apt/ #{node.lsb.codename}-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
# execute "wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |  sudo apt-key add -"
execute "add-apt-repository ppa:pitti/postgresql"
execute "apt-get update"

include_recipe "postgresql"
include_recipe "postgresql::server"
include_recipe "postgresql::ruby"
