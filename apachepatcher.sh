#!/bin/bash
#
# Apache patcher 
# Applies the Adaptavist fix for apatche patches including the autoindex module 
# Run as root


# Check if running as root
if [[ $EUID -ne 0 ]]; then
    echo "##### This script needs to run as root"
    exit
fi


# Make sure the file does not already exist
if [ -e /etc/httpd/conf.d/autoindex.load -o -e /etc/httpd/conf.d/mod_autoindex.load ]; then 
  echo "This machine is already patched"
  exit
fi
 
# Create the new config file to load the needed module 
echo 'LoadModule autoindex_module modules/mod_autoindex.so' > /etc/httpd/conf.d/autoindex.load

# Commit changes to etckeeper 
etckeeper commit "added autoindex module to apache module list after patching added dependency"


