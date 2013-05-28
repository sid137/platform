
default[:go][:version]  = '1.1'
default[:go][:platform] = 'amd64'
node.default['rbenv']['rubies'] = %w[2.0.0-p195]
node.default['rbenv']['global'] = "2.0.0-p195"
default['postgresql']['version'] = "9.2"
default[:postgresql][:password][:postgres] = '43ee1270279d434bfd09941feaf55cdb'
# default['postgresql']['enable_pgdg_apt'] = true
# default['postgresql']['dir'] = "/var/lib/pgsql/9.2/data"
default['postgresql']['client']['packages'] = ["postgresql-client-9.2"]
default['postgresql']['server']['packages'] = %w( postgresql-9.2 postgresql-server-dev-9.2)
# default['postgresql']['server']['service_name'] = "postgresql-9.2"
default['postgresql']['contrib']['packages'] = %w(
postgresql-contrib-9.2
postgresql-plpython-9.2"
postgresql-doc-9.2
postgresql-dbg
)
