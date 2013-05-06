# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "platform-berkshelf"

  config.vm.box = "quantal64"

  config.vm.box_url = "http://static.aldoborrero.com/vagrant/quantal64.box"
  # config.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.vm.network :forwarded_port, guest: 8787, host: 8787


  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.berkshelf.enabled = true


  # config.ssh.private_key_path = '~/.ssh/id_rsa'
  # config.vm.box = 'digital_ocean'
  config.vm.provider :digital_ocean do |provider|
    provider.image = "Ubuntu 12.10 x64 Server"
    provider.client_id = ENV['DIGITAL_OCEAN_CLIENT_ID']
    provider.api_key = ENV['DIGITAL_OCEAN_API_KEY']
  end

  config.vm.provision :chef_solo do |chef|
    chef.json = { }

    chef.run_list = [
        "recipe[minitest-handler]", 
        "recipe[platform::default]"
    ]
  end
end
