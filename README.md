# polymer-testing-box

A ready-to-go headless Ubuntu box for running Polymer [web-component-tester](https://github.com/Polymer/web-component-tester)
in Chrome and Firefox headlessly via Xvfb.

This also provides Flash support via Google Chrome, which ships with the Flash Pepper plugin.

## Technologies

* Node.js, bower, web-component-tester
* Firefox, Google Chrome
* Xvfb

## Getting started

Install [Vagrant](https://www.vagrantup.com) & [ansible](http://www.ansible.com).

1. `vagrant up` to provision the box with the ansible playbook
2. `vagrant ssh` to shell into the box
3. `cd /vagrant` to enter the directory syncd to your host machine
4. `git clone https://github.com/PolymerElements/iron-ajax.git` to clone a Polymer web component
5. `cd iron-ajax`
5. `git checkout 1.0.4` to check out an official release with passing tests
6. `bower install`
7. `DISPLAY=:0 sudo wct` to run web-component-tester in Firefox & Chrome

## Bonus - debug from your Mac via VNC

The Vagrant box has no GUI, but your Mac does! Connect to the Vagrant box from
your Mac via VNC to observe and debug.

Install & run x11vnc on the vagrant box

1. `vagrant ssh`
2. `sudo apt-get install x11vnc`
3. `x11vnc -display :0 &`

Install and run Tiger VNC Viewer on your Mac

1. `brew install Caskroom/cask/tigervnc-viewer`
2. start Tiger VNC viewer on `localhost:5901`

Run the tests on the Vagrant box and watch from Tiger VNC Viewer.

## Next Steps

Deploy to AWS? Digital Ocean? OpenStack?
