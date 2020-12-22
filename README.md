# user_adder

This script is designed to add a user and copy an ssh key to a host, allowing them to log in with ssh.

# description

ansible_scripts and bash_scripts have 3 scripts that do similar things: they are addme, which adds a user named charles; removeme, which removes them; and listme, which provides a list of all users on the machine.

ansible_scripts has a 'hosts' file that represents the host inventory your script will run against. The only address is 'localhost', but this can be replaced by any IP, FQDN, or group thereof that you can access as root. For more detail, read the file at /etc/ansible/hosts.

bash_scripts contains scripts that operate against the local machine they are run on. When you run addme.sh, you add charles to your local machine.

# requirements

Bash can be utilized on most flavors of Linux. Ansible will need to be installed  via `apt` or `yum`.

Using the ansible_scripts 'addme' requires the user to run

`ansible-galaxy collection install ansible.posix`

first. The user being added must already exist with an ssh keypair on the machine running Ansible.

# also

'charles' can be treated as a variable and replaced with any other name; its role is that of a placeholder.
