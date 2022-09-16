I have attached two playbooks to perform automation of given requirements

mysql.yml --- Install Mysql with secure installation and creates user and grant privilages to the same
mysql_move_dir.yml --- Moves MySQL directory to new directory location on server
vault.yaml --- To store root password and new user & password information (This is encrypted with ansible-vault)

Note: I have added all logics and steps mentioned in the given links to the best of my knowledge, also validated Syntax  but I don't have ansible installed on my local system to check actual working of playbook and this is my first time writing ansible playbook
