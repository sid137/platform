
default[:go][:version]  = '1.0.3'
default[:go][:platform] = 'amd64'
node.override['rbenv']['rubies'] = %w[2.0.0-p0]
node.override['rbenv']['global'] = "2.0.0-p0"
