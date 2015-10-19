#install some pear modules
pear install Mail
pear install mail_mime
pear install Net_SMTP
pear install Spreadsheet_Excel_Writer

#set password to vagrant here
echo "vagrant:vagrant" | chpasswd

#apache creates this due to the config file.  lets remove it
rm -rf /var/www/%2

cp /vagrant/puphpet/files/known_hosts /root/.ssh/

# Setup postfix, use SSH tunnel
DEBIAN_FRONTEND=noninteractive apt-get install -y mailutils
sed -i 's/^relayhost.*/relayhost = 127.0.0.1:2525/' /etc/postfix/main.cf

#--- remove apache from startup, add nginx
#sudo update-rc.d apache2 disable
#sudo update-rc.d nginx enable

#---- remove nginx from startup, add apache
#sudo update-rc.d nginx disable
#sudo update-rc.d apache2 enable