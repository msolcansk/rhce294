
# Setup environment with VAGRANT 
Make sure all shell scripts in scripts directory are executable!
Customize Vagrantfile as needed
```
number_of_machines = <1..n>
```


Provision machines
```
VAGRANT_EXPERIMENTAL="disks" vagrant up
```
Create ssh_config in current dir
```
vagrant ssh-config > ./ssh_config
```
you can then connect to machines using 
```
ssh -F ssh_config <machine_name>
```

Run Custom vagrant file
```
VAGRANT_VAGRANTFILE=<vagrant_file> vagrant up
```

# TODO
Finish ssh-key generation and distribution and /etc/hosts creation