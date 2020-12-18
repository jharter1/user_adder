#! /bin/bash

echo What is the name of your user?

read uname

echo What is their password?

read pwd

useradd $uname

passwd $uname $pwd
