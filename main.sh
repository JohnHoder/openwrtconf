################
### Add user ###
################

opkg update
opkg install shadow-useradd

useradd john

# passwd john

mkdir /home
mkdir /home/john
chown john /home/john

# vi /etc/passwd
# john:x:1000:1000:john:/home/john:/bin/ash

#########################
### Run other scripts ###
#########################

./basic.sh
./printer.sh
./openvpn.sh
./vsftpd.sh