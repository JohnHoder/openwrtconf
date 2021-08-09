# INSTALL VSFTPD
# Do not install just "vsftpd"!!!
opkg install vsftpd-tls

# Generate SSL/TLS keys
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/vsftpd/vsftpd_privkey.pem -out /etc/vsftpd/vsftpd_cert.pem -subj /C="DE"/ST="Saxony"/L="Leipzig"/CN="OpenWrt"

# Copy config
cp ./etc/vsftpd.conf /etc/

# END