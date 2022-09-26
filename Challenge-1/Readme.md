As discussed, have automated all the tasks with ansible roles

Thanks for providing server access. I have got my system back from service so I have created Ubuntu VM with help of multipass and installed ansible version-2.13.4 in my local

I have created four different roles for automating the tasks which includes installing mysql, performing mysql secure installation and creating new user and assigning privileges to newly created user and also to perform mysql data movement from source to another location

I have used ansible-galaxy to create different roles under /etc/ansible/roles/ . Sample command: ansible-galaxy init install_mysql --offline

Have configured hosts details in /etc/ansible/hosts file
   --- Configured server details that has been provided for my testing purpose

Have set up passwordless authentication by executing ssh-keygen and have copied public key to remote hots(192.241.181.215) using ssh-copy-id user@remotehost-ip-addr

Have also created vault file to store mysql new root password,new user credentials. Sample command: ansible-vault encrypt vault.yml(prompts for pwd which needs to be configured for further run)

Finally I have one playbook (main.yml) which includes all the roles that has been created. 
  Execution command: ansible-playbook main.yml --ask-vault-pass --extra-vars "ansible_sudo_pass="password"
  
I have used import_tasks for resuabilty of codes   

Note: 
    I have installed mysql and performed all secure configuration and created new users also have done mysql data movement in Server that has been provided for my testing
