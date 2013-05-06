r_packages = %w(r-base r-base-core gdebi-core libapparmor1)
r_packages.each do |pkg|
    package pkg
end

remote_file "/tmp/rstudio-server.amd64.deb" do
  source "http://download2.rstudio.org/rstudio-server-0.97.449-amd64.deb"
end

execute "gdebi /tmp/rstudio-server.amd64.deb -n" 
