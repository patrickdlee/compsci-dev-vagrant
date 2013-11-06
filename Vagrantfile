VAGRANTFILE_API_VERSION = "2"
CODE_DIR_ON_HOST = "~/code/other/bsu"
CODE_DIR_ON_VM = "/home/vagrant/code"
BASE_BOX = "fedora18"
#BASE_BOX = "precise32"

nodes = [
  { :hostname => "compsci-dev", :ip => "192.168.0.42", :box => BASE_BOX, :ram => 512 },
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  nodes.each do |node|
    config.vm.define node[:hostname] do |node_config|
      node_config.vm.box = node[:box]
      node_config.vm.hostname = node[:hostname]
      node_config.vm.network :private_network, ip: node[:ip]
      node_config.vm.synced_folder CODE_DIR_ON_HOST, CODE_DIR_ON_VM

      memory = node[:ram] ? node[:ram] : 512;
      node_config.vm.provider :virtualbox do |vb|
        vb.customize [
          "modifyvm", :id,
          "--memory", memory.to_s,
        ]
      end
    end
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "site.pp"
    puppet.module_path = "puppet/modules"
  end
end
