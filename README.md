# OpenWRT custom setup script

## How to use

Log into your OpenWRT.

    ssh root@192.168.100.1 -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa

You need to have **Git** installed on your OpenWRT system.

    opkg update

    opkg install git
    opkg install git-http

    git clone https://github.com/JohnHoder/openwrtconf.git
    
    cd openwrtconf/

    ./setup.sh

Once you are finished, you can reboot.

    reboot

## To push changes to this repo
For HTTPS:

    git remote set-url origin https://github.com/JohnHoder/openwrtconf.git

For SSH:

    git remote set-url origin git@github.com:JohnHoder/openwrtconf.git

