# user_adder

this script is designed to add a user & an ssh key to allow him to log into a fresh host server.

the ansible_scripts and bash_scripts directories contain 3 scripts that do similar things. they are addme, which adds a user named charles; removeme, which removes him, and listme, which prints a list of all users on the machine.

ansible_scripts also includes a 'hosts' file that can be arranged into groups. the only address labeled therein is 'localhost', but this can be replaced by any IP or FQDN that your user can log into.

'charles' can be variablized and replaced with any other name; it's role is that of a placeholder.
