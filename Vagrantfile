Vagrant.configure("2") do |config|
	config.vm.define "nginx-machine" do |vm_01|
		vm_01.vm.box = "generic/ubuntu2004"
		vm_01.vm.provider "vmware_desktop" do |v|
			v.vmx["memsize"] = "2048"
			v.vmx["numvcpus"] = "1"
			v.vmx["displayname"] = "nginx-machine"
		end
		vm_01.vm.network "private_network", ip: "10.100.1.100"
		# vm_01.disksize.size = "20GB"
		vm_01.vm.synced_folder ".", "/vagrant"
		vm_01.vm.hostname = "nginx-machine"
		vm_01.vm.provision "ansible" do |ansible|
			ansible.playbook = "provisioning/playbook.yml"
		end
	end
end
