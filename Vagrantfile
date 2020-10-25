Vagrant.configure("2") do |config|
  
  number_of_machines = 5
  box_name = "generic/centos8"

  base_ip = 100
  base_ip_addresses = "192.168.51"
  # we will create ip address from 192.168.51.100 onward
  ip_addresses = (1..number_of_machines).map{ |i| "#{base_ip_addresses}.#{base_ip + i}" }
  
  # provisioning script
  # Add all required setup here
  # script = <<-SCRIPT
  #   echo "hello world"
  # SCRIPT

  config.vm.provider "virtualbox" do |v|
    v.cpus = 1
    v.memory = 1024
    
  end
  
  (1..number_of_machines).each do |i|
    config.vm.define "a#{i}" do |box|
      box.vm.box = box_name
      box.vm.network "private_network", ip: "#{ip_addresses[i-1]}"
      if i == 1 || i == 3 
        box.vm.disk :disk, size: "5GB", name: "disk-#{i}"
      end
      # if i == 1
      #   box.vm.provision "shell", path: "./scripts/control_node.sh" 
      # end
      
      # provision the script
      # box.vm.provision "shell", inline: "#{script}"
      box.vm.provision "shell", path: "./scripts/allnodes.sh"    
    end
  end

#   config.trigger.before [:up, :provision, :destroy] do |trigger|
#     trigger.info = "Running local ./scripts/rm_ssh_config.sh"
#     trigger.run = {path: "./scripts/rm_ssh_config.sh"}
#   end
  
#   config.trigger.after [:up] do |trigger|
#     trigger.info = "Running ./scripts/create_ssh_config.sh"
#     trigger.run = {path: "./scripts/create_ssh_config.sh"}
#   end
end
