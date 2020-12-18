#! /bin/

#get the right username
echo What is the name of the user to be deleted?
read delname

#remove him
userdel $delname
