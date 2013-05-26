rbenv_gem "passenger"
# execute "/opt/rbenv/bin/rbenv rehash"

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


bash "passenger_module" do
  user "root"
  code <<-EOH
  echo 100 > /proc/sys/vm/swappiness
  /opt/rbenv/shims/passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx
  echo 60 > /proc/sys/vm/swappiness
  /opt/rbenv/shims/passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx
  EOH
  not_if do
    File.exists?("/opt/nginx")
  end
end
# For reboots
# execute "echo '/swapfile1 swap swap defaults 0 0' >> /etc/fstab"
