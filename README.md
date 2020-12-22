# user_adder

This script is designed to add a user & an ssh key to another host, allowing them to log in with ssh.

The ansible_scripts and bash_scripts directories contain 3 scripts that do similar things: they are addme, which adds a user named charles; removeme, which removes them, and listme, which prints a list of all users on the machine.

Using the ansible_scripts 'addme' requires the user to run `ansible-galaxy collection install ansible.posix` on their ansible machine first. The user being added must already exist with an ssh keypair on the machine running Ansible.

ansible_scripts also includes a 'hosts' file that represents the host inventory your script will run against. It can be arranged into groups. The only address is 'localhost', but this can be replaced by any IP or FQDN that you can access as root. For more detail, check out the file at /etc/ansible/hosts

'charles' can be variablized and replaced with any other name; it's role is that of a placeholder.

The bash_scripts directory contains scripts that operate against the local machine they are run on. When you run addme.sh, you add charles to your local machine. The same goes with removeme.
