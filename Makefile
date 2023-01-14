load_hosts:
		sudo hostctl add nginx-lab < nginx-test.etchosts
unload_hosts:
		sudo hostctl remove nginx-lab
enable_hosts:
		sudo hostctl enable nginx-lab
disable_hosts:
		sudo hostctl disable nginx-lab
.PHONY: load_hosts enable_hosts disable_hosts