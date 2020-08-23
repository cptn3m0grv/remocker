#!/usr/bin/python3

## Pre-requisites
## --> pip3 install cgi-tools
## --> pip3 install subprocess
## I used RHEL 8 as the host OS for my webserver
## you need to have docker installed in your operating system 
## Root priveleges should be given to docker commands
## Both firewall and SELINUX should be permissive

import cgi
import subprocess

myData = cgi.FieldStorage()
myCommand = myData.getvalue("q")
ru = "sudo docker {}".format(myCommand)
print("Content-Type:text/html")
print()
print()

print(subprocess.getoutput(ru))