# INSTALL OPENVPN

opkg update

opkg install openvpn-openssl luci-app-openvpn
opkg install openvpn-easy-rsa

# It is recommended that you move your easy-rsa files from the default locations so that you don’t accidentally override those in case of system update.
mkdir /etc/config/openvpn-config
mv /etc/easy-rsa/* /etc/config/openvpn-config/
rm -rf /etc/easy-rsa/
ln -s /etc/config/openvpn-config/ /etc/easy-rsa


# CD into /etc/easy-rsa and open vars. Edit all the required variables. Point to the right config file:
# export KEY_CONFIG="$EASY_RSA/openssl-1.0.0.cnf"

# server certs
easyrsa clean-all
easyrsa build-ca
easyrsa build-server-full server nopass
easyrsa gen-dh

# client certs
easyrsa build-client-full client1
easyrsa export-p12 client1

# https://www.niek.be/2020/02/03/create-certificates-with-easy-rsa-on-openwrt/
#Distribute files
#Filename 	Needed by 	Purpose 	Secret
#ca.crt	server + all clients	Root CA certificate	NO
#ca.key	key signing machine only	Root CA key	YES
#dh{n}.pem	server only	Diffie Hellman parameters	NO
#server.crt	server only	Server Certificate	NO
#server.key	server only	Server Key	YES
#client1.crt	client1 only	Client1 Certificate	NO
#client1.key	client1 only	Client1 Key	YES

cd /etc/easy-rsa/pki/

cp ca.crt /etc/openvpn/
cp issued/server.crt /etc/openvpn/
cp private/server.key /etc/openvpn/
cp dh.pem /etc/openvpn/


# Check if we see local network devices
nmap -sP -R 192.168.0.0/24


# https://blog.doenselmann.com/openvpn-server-auf-openwrt-router-betreiben/
