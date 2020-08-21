#!/usr/bin/python3

## Pre-requisites
## --> pip3 install cgi-tools
## --> pip3 install subprocess
## I used RHEL 8 as the host OS for my webserver

import cgi
import subprocess

myData = cgi.FieldStorage()
myCommand = myData.getvalue("q")

print("Content-Type:text/html")
print()
print()

print(subprocess.getoutput(myCommand))