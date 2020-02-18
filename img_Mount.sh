#!/bin/bash

image="init_img_linux-linux-4.9.69-xenomai-3.0.6-led-behaviour_linux_bbb_0_b_.1.0.9700.0.img.zip"

rm /images/$image
rm -r /img10
wget -P /images --user jenkins --password jenkins "http://192.168.102.115:8083/repository/init_image/$image"

unzip /images/$image -d /img10/
kpartx -av /img10//osimage.img
echo "Mount osimage is Success"
mount /dev/mapper/loop0p1 /img11/
mount /dev/mapper/loop0p2 /img12/
mount /img12/rescue.img /img13/
echo "rescue.img mount img13"
1







