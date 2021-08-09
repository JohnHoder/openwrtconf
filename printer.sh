# Install required packages
opkg update
opkg install kmod-usb-printer
opkg install p910nd luci-app-p910nd

# Copy hotplug scripts for printer symlinks
mkdir /etc/hotplug.d/usb
cp -rf ./etc/hotplug.d/90-xerox-3117-symlink /etc/hotplug.d/usb/
cp -rf ./etc/hotplug.d/90-hp-p1006-symlink /etc/hotplug.d/usb/

# Copy p910nd config
cp -rf ./etc/config/p910nd /etc/config/