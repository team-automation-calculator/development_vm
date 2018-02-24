# development_vm

## Purpose

Create a virtual machine that team-automation-calculator developers can use to get started on team projects with minimal setup.

## Tools

Base Image: [Ubuntu 16.04 from osboxes](https://www.osboxes.org/ubuntu/)

Install bash script that installs these tools in the $PATH variable for easy use:

* Ruby 2.0.0+
* rbenv
* Docker Engine 17.09.0+
* Docker Machine 0.12.0+
* Docker Compose (Must support Compose 3.4 format)
* git
* python
* Amazon Web Services CLI
* RubyMine (Unregistered)
* Sublime (Unregistered)

## Tips

* Install Virtualbox Guest Additions without mounting the ISO with this vagrant plugin: `vagrant gem install vagrant-vbguest`. 
