#!/bin/sh

# start npm lazy on system start
sudo sed -i -e '$i \nohup sh /home/vagrant/.npm_lazy_config/npm_lazy.sh &\n' /etc/rc.local

# add npmrc local
mkdir -p /home/vagrant/.npmrcs
echo "registry=http://127.0.0.1:5080" > /home/vagrant/.npmrcs/local
ln -sf /home/vagrant/.npmrcs/local /home/vagrant/.npmrc