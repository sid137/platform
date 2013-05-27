rbenv_gem "passenger"

# Add user to www-data group
group "www-data" do
  action :modify
  members "sid137"
  append true
end

# Create /var/www
directory "/var/www" do
  owner "www-data"
  group "www-data"
  mode "0775"
end

cookbook_file "/etc/init.d/nginx" do
  source 'nginx.init'
  owner "root"
  group "root"
  mode 0755
end
execute "sudo /usr/sbin/update-rc.d -f nginx defaults"


bash "passenger_module" do
  user "root"
  code <<-EOH
  echo 100 > /proc/sys/vm/swappiness
  /opt/rbenv/shims/passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx --extra-configure-flags='--with-http_gzip_static_module --with-http_secure_link_module --with-http_realip_module --with-http_ssl_module'
  echo 60 > /proc/sys/vm/swappiness
  service nginx start
  EOH
  not_if do
    File.exists?("/opt/nginx")
  end
end
