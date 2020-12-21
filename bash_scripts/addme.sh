#! /bin/bash

#get some requisite info about the user to be added
echo What is the name of your user?
read uname
echo What is the location of their ssh public key?
read sshkey

#create relevant user files & directories
mkdir -p /home/$uname/.ssh
touch /home/$uname/.ssh/authorized_keys
useradd -d /home/$uname $uname
chown -R $uname:$uname /home/$uname

#adjust permissions so that they can log in
chmod 700 /home/$uname/.ssh
chmod 644 /home/$uname/.ssh/authorized_keys

#place their ssh key where it needs to go
cp $sshkey > /home/$uname/.ssh/authorized_keys
