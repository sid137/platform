rbenv_gem "passenger"

bash "create swapfile for nginx install" do
  user "root"
  code <<-EOH
  swapoff -a
  dd if=/dev/zero of=/swapfile bs=1024 count=1024k
  chown root:root /swapfile
  chmod 0600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  EOH
  not_if do
    File.exists?("/swapfile")
  end
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

# For reboots
# execute "echo '/swapfile1 swap swap defaults 0 0' >> /etc/fstab"
