rbenv_gem "passenger"

bash "create swapfile for nginx install" do
  user "root"
  code <<-EOH
  swapoff -a
  dd if=/dev/zero of=/swapfile bs=1024 count=512k
  chown root:root /swapfile
  chmod 0600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  EOH
end


execute "passenger_module" do
  command "passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx"
  action :run
  not_if do
    File.exists?("/opt/nginx")
  end
end
# For reboots
# execute "echo '/swapfile1 swap swap defaults 0 0' >> /etc/fstab"
