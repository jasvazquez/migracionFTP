#!/bin/bash

# Instalamos vsftp
# ---

cp res/pacman.conf /etc/pacman.conf 
pacman -Sy
pacman -S vsftpd
cp res/vsftpd.conf /etc/vsftpd.conf

# Creamos usuario FTP
# ---

useradd jasv
passwd jasv
mkdir -p /home/jasv/ftp
chown -R jasv:jasv /home/jasv
chmod a-w /home/jasv/

# Arrancamos el servidor FTP
# ---

systemctl start vsftpd
systemctl status vsftpd

# Mostramos la IP a la que conectarnos
# ---

ip address

echo "========================================================================="
echo "Recuerda conectarte por FTP a la IP anterior utilizando 'jasv' como el usuario "
echo "y la contraseña que hayas elegido hace un momento"
echo "========================================================================="
