#!/bin/bash

MENU=IyEvYmluL2Jhc2gKCnRtcF9zZWxlY3Rpb249L3RtcC9zZWxlY3Rpb25fdG1wCmxvb3A9dHJ1ZQoKd2hpbGUgJGxvb3A7IGRvCgoJZGlhbG9nIC0tdGl0bGUgIk1haW4gbWVudSIgXAoJCS0tbm9jYW5jZWwgXAoJCS0tbWVudSAiIiAxMCAzMCA0IFwKCQkxICJTdGFydCBET1NCT1giIFwKCQkyICJPcHRpb25zIiBcCgkJMyAiU2h1dGRvd24iIFwKCQk0ICJFeGl0IG1lbnUiIDI+ICR0bXBfc2VsZWN0aW9uCgoJc2VsZWN0aW9uPSQoY2F0ICR0bXBfc2VsZWN0aW9uKQoKCWNhc2UgJHNlbGVjdGlvbiBpbgoJCTEpIGJhc2ggLmJhc2hyYyA7OwoJCTIpIC4vb3B0aW9ucy5zaCA7OwoJCTMpIHNodXRkb3duIC1oIG5vdyA7OwoJCTQpIGxvb3A9ZmFsc2UKCWVzYWMKCmRvbmUKCg==
OPTIONS=IyEvYmluL2Jhc2gKCnRtcF9zZWxlY3Rpb249L3RtcC9zZWxlY3Rpb25fdG1wCmxvb3A9dHJ1ZQoKIyBVcGRhdGUKX3VwZGF0ZSAoKSB7CiAgICAjIEdldCB1cGRhdGUgc2NyaXB0CiAgICB3Z2V0IGh0dHBzOi8venZlbGViYS5jei9kb3dubG9hZHMvdXBkYXRlLWRvcy5zaC5zaWduZWQKICAgIGlmIFtbICQ/ID09IDAgXV07IHRoZW4KICAgICAgICAjIFZlcmlmeSBhbmQgc3RyaXAgc2lnbgogICAgICAgIGdwZyAtLWRlY3J5cHQgLW8gdXBkYXRlLWRvcy5zaCB1cGRhdGUtZG9zLnNoLnNpZ25lZAogICAgICAgIGlmIFtbICQ/ID09IDAgXV07IHRoZW4KICAgICAgICAgICAgIyBSdW4gdXBkYXRlCiAgICAgICAgICAgIHN1ZG8gYmFzaCB1cGRhdGUtZG9zLnNoCiAgICAgICAgZWxzZQogICAgICAgICAgICBkaWFsb2cgLS1tc2dib3ggIkVSUk9SOiBDb3VsZCBub3QgdmVyaWZ5IHVwZGF0ZS4iIDUgNDUKICAgICAgICBmaQogICAgZWxzZQogICAgICAgIGRpYWxvZyAtLW1zZ2JveCAiRVJST1I6IFVuYWJsZSB0byBkb3dubG9hZCB1cGRhdGUuIiA1IDQ1CiAgICBmaQogICAgIyBDbGVhbnVwCiAgICBybSB1cGRhdGUtZG9zLnNoCiAgICBybSB1cGRhdGUtZG9zLnNoLnNpZ25lZAp9CgojIERpc3BsYXkgYmF0dGVyeSBzdGF0dXMgaW4gZGlhbG9nIHdpbmRvdwpfYmF0dGVyeSAoKSB7CglzdGF0dXM9JChjYXQgL3N5cy9jbGFzcy9wb3dlcl9zdXBwbHkvQkFUMC9zdGF0dXMpCglsZXZlbD0kKGNhdCAvc3lzL2NsYXNzL3Bvd2VyX3N1cHBseS9CQVQwL2NhcGFjaXR5KQoKCXNsZWVwIDMgfCBkaWFsb2cgLS10aXRsZSAiQmF0dGVyeSIgXAoJCS0tZ2F1Z2UgIiRzdGF0dXMiIDYgNDAgJGxldmVsCn0KCiMgdW4tbW91bnQgYWxsIGF1dG9tb3VudGVkIGRldmljZXMKX3Vtb3VudCAoKSB7CglkZXZpY2VzPSQobW91bnQgfCBncmVwIC9tZWRpYS91c2IgfCBjdXQgLWRcICAtZiAxKQoJCglmb3IgZGV2aWNlIGluICRkZXZpY2VzOyBkbwoJCXB1bW91bnQgJGRldmljZQoJCWlmIFsgJD8gLWVxIDAgXTsgdGhlbgoJCQlkaWFsb2cgLS1tc2dib3ggIiRkZXZpY2UgY2FuIGJlIHNhZmVsbHkgcmVtb3ZlZCIgNSA1MAoJCWVsc2UKCQkJZGlhbG9nIC0tbXNnYm94ICJFUlJPUjogJGRldmljZSBjYW5ub3QgYmUgcmVtb3ZlZCIgNSA1MAoJCWZpCglkb25lCn0KCndoaWxlICRsb29wOyBkbwoKCWRpYWxvZyAtLXRpdGxlICJPcHRpb25zIiBcCgkJLS1ub2NhbmNlbCBcCgkJLS1tZW51ICIiIDE0IDQwIDggXAoJCTEgIlNvdW5kIG1peGVyIiBcCgkJMiAiQ29uZmlndXJlIERPU0JPWCIgXAoJCTMgIkVqZWN0IFVTQiIgXAoJCTQgIkJhdHRlcnkgaW5mbyIgXAoJCTUgIlVwZGF0ZSBzeXN0ZW0iIFwKCQk2ICJSZWJvb3QiIFwKCQk3ICJTaHV0ZG93biIgXAoJCTggIkV4aXQgb3B0aW9ucyIgMj4gJHRtcF9zZWxlY3Rpb24KCglzZWxlY3Rpb249JChjYXQgJHRtcF9zZWxlY3Rpb24pCgoJY2FzZSAkc2VsZWN0aW9uIGluCgkJMSkgYWxzYW1peGVyIDs7CgkJMikgbmFubyAvaG9tZS96YmVueS8uZG9zYm94L2Rvc2JveC0wLjc0LmNvbmYgOzsKCQkzKSBfdW1vdW50IDs7CgkJNCkgX2JhdHRlcnkgOzsKCQk1KSBfdXBkYXRlIDs7CgkJNikgc2h1dGRvd24gLXIgbm93IDs7CgkJNykgc2h1dGRvd24gLWggbm93IDs7CgkJOCkgbG9vcD1mYWxzZQoJZXNhYwoKZG9uZQoK
KEY=LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUdOQkZ0cDdvOEJEQUN1WVBLVzhEWDJFeEM4SnBIbkpKeXNyRVBEdWhUZGdmTHFLRE1sRXJaNmw1S2ZGQVVvCm5LSzdoUUtzTzZ1eE1lY1dlbEJxNlNTbTA5cHI0TEYwNmpIR25pNVJDZ3cwbXIweVdwNzR2bU04TldRTXpiR3kKOGsvT3dBRlhEVmYweGorN2dxUHQ2TW40dXVsRk00aVpYN1RxTVV2WHZQZUpZNzEvWDArZnJxWk1uUnJDVk5RVwptNVA4ZDl5VldCbTBkcTN5MGR3eklDUTVrRUQ5b0FPRjFNWnA5RkxOUnBSK1IzTFRZVXNQM3RNV3RSZ3c3dHJDClJ1Q2t3ZnFlS3pUQkl6eXhGcWxMajdMTXhhK2JwZGY2bXp1azJUOFBYUDNyVFVPcWM0TnJPN1p1S0hRRlcrcEEKNmdQS20rUWVuYlJFWjdaUE5jaVlneHR2KzVLbHFnc3FXalg0cFBaY0dWT0xTekR0R05HWVNsNVNnR3VRVzdWTQpMOGh2Z2kzMDBpVm9GejRNWmRsdE9sMXB4ZEpROUNraXBVRk9zbUh2ZXFFQUsyazdUSFFtQTNLa2NDeHlUVTV0CkdCM2JjUXdVMGRvN2plLzlQQnBRcGc1NVZHWGs3VEM5VE04WWhVVWhsK1N1OHU4akNMZnlkNXd5YllLL0hSNEMKVzVOR2tpZjQxNERmV2RVQUVRRUFBYlFrV21SbGJtVnJJRlpsYkdWaVlTQThkbVZzWlhwa0xuUjFlRUJuYldGcApiQzVqYjIwK2lRSFVCQk1CQ2dBK0ZpRUUyd29Ua2pSVUhjdGJBdU9yczF0dHJnZUVJMlFGQWx0cDdvOENHd01GCkNRUENad0FGQ3drSUJ3SUdGUW9KQ0FzQ0JCWUNBd0VDSGdFQ0Y0QUFDZ2tRczF0dHJnZUVJMlM4WFF3QWhzNTMKZXlucDh5SFFEcWVqVHVrUjRGNjV4eDMwMjhvN1U4NTZzTklKdUtpaSs3L00xYlpudkFYeUVFMUY4SHBaMFE1WAp4bWtGWmcxOFhWQ1VKYVRmcDdPSGV2MGhLdHk5UFphcEI5SEVseE9WSjgra084ZnA1UmV4VW5vK2UwMWVkWEtIClZRK2dJMUQzczhxT3NXb3lRT2RScHpwUklOWkdxMUhFdHI5RDB3VFdXRkNNN0crYTQvak0vTEZoRGFrNW1ValAKcnZpODBGMUo5SmZQSDNqUUZpVHJ1ajlGa2U0ZGtjRm9NNk9xbDVxZUtNM2h5V3VaWnVaQm16OUNicEtXR0ZvTwpxU0tHT1o5cTd2RGc3UXUvSFFoWU5IUER5SWV6Z0tTeXdTK3c5djVVYS9nakYwektLVTcxRU5QUjZHUE1UUURPCjg5SHpaenR4TEVZcDh5V2FBZVpVQmE2czZ4dkZod0tHSmhzcmJRU3paZlo2S3BSYkVIOWZ6S285NWpLRDlXR0wKRWxxbmlmTmpnQWo4N0tmN1VWYkZoMWZNaWdjZWFVUjNmcDhkSy80eXZ4QU92ZkFOK1FVT3k0T0J0bGZ4bmFLawpRS25BTHZHcThRNjRaNXFjd2QwZzUxZUVhQjd1OG5iR2xxYXhpTTkvVDlZZTlkc01idElTSWx3OVgwaGF1UUdOCkJGdHA3bzhCREFEb1pLZEErL0R5R2gxSk03a1BnQmZuNDlNMVdVZXJFWDczVGZROUpuSjNjMGZ5RjB3NDhjbXkKVUxaOXp0MDhFM3hFNEZwRzF2d0xnMi9ZcTR3aHNscmNmbFJZSW1lNjQveWhLc3phVWZrQXZsTytZZTRid0pYYgo4WXphdW1VdEp6K1ZkeWVPSzg0WWlmOFFqekdVTjRKdFdEOXgvd0t4bnlZN3pIejJLWXBZZENDZTJoZEg4QWZNCk8yMis5S0dCWURwd3RUZksyazI2TFlWZ0MwOXNKOVBETDhuemg4Z29FSnRTYUNPNFZ1RFBKbFRFSGFteCtZM3kKdzl4ay9iUGlEZkphNTVzOUlWQnNNWldwL1dqK1dEbFZQWkkweDFKbUtxanFIcWNRR2FjYlhsSlJ4ampWT25iSgo2MHdpeENvOXBBTTNkK3U5ZXJ6ZVBZQ0RNQTZxSWFBbzNwRVV4VGw3ZjhVWU1kdVdMVVVaUDloa0E2MkFzRkc1Cjk4U2g3NWlrS3NIMFIxSTVwYVROMTZpcGVXS1o5UXFzbTFvb0tRYTZBem8wQnV6S0NZSS9zb1lsUUVXZlc4elAKcnlMWndsUm5jSjBQOUVydXcxTjFZZU5tcTZPODBnNTVmcTFVYWRKbUZrc3JZZWFYSTBpQTUvVmlUS052aDBFQwpNaHlzOHkvdDl0c0FFUUVBQVlrQnZBUVlBUW9BSmhZaEJOc0tFNUkwVkIzTFd3TGpxN05iYmE0SGhDTmtCUUpiCmFlNlBBaHNNQlFrRHdtY0FBQW9KRUxOYmJhNEhoQ05rVFEwTC8xdEhRT0pXazBpZ0NQblZGWDdZM1pjMVFqRHUKOXNkNUtKemVFSkJUZUlnU1R4OXduU2VQbExuaFdmMEtobnAvUHRuK2o3bTh4OVg0WmV1ZlQvbkJpT1dTWWovaAowR29hMnlOSG9qcEhWV0xvT0lqRTU5cGZTdGI2MjZEeW1WclZWdlVqQzJzc0NRMUE1RFFxbXhJaWQ4NEZkZG9HCmF0TE9haXJTQ1pJa0R6UjBES1pUQk80TXc4d3d0d0U3MENQWmNzWXAxYnBSQnppRXJVZXdnaVovVWR1UXJFTDAKbWpzZm1UTWtyeDNrbVZYekVFUEdiRXN5L3dIQmtnODNjak13bjNtSnp6OHF2aDJMSk9pVU91dG5SUDRKUS83Wgpnd2c0UUZreFlOQzd6QkY3UkorK1pTb2JNS3dJOU1US0tFNVJkVG1uSlN6U0ZSRXhVNnZGdk0yaGxVTGpOSnZkCjA0ZE4ycGF1U0p4M1RJYWJpYjdHaXhZYWdxVFRocXY3WEczSFdTcGxpQ1MzWSt3ZjZYRldTaFEwT0tOdkhMZTcKK3E5VXBVRFVDYSs1cHB4aUUveC82SVJQTU8vVldlS3JvbEhrYllnRlVYVEc1QmZzeWdYc2EzRHRURGQyT1ZUVwo1Q1gvbys1M0VkblBhdDdNb0ZaNUxEUGNOM0lJeWJEalBiWXJYUT09Cj1zN3JKCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K
VERSION=1

# Install packages
apt-get update
sleep 2
apt --yes install xorg xinit upower xbindkeys xbacklight alsa-utils dosbox dialog usbmount pmount
if [[ $? != 0 ]]; then exit; fi

# Get username
USER=$(who | grep tty1 | cut -d\  -f 1)
if [[ $? != 0 ]]; then exit; fi

# Add user to group audio
usermod -a -G audio $USER
if [[ $? != 0 ]]; then exit; fi

# Remove ubuntu splash screen
sed -i 's/splash//g' /etc/default/grub
if [[ $? != 0 ]]; then exit; fi
# Update grub
update-grub
if [[ $? != 0 ]]; then exit; fi

# Configure rc files
# Configure x startup
printf "xbindkeys\nexec dosbox" > /home/$USER/.xinitrc
chown $USER:$USER /home/$USER/.xinitrc
if [[ $? != 0 ]]; then exit; fi

# Configure keyboard shortcuts
echo '"amixer set Master 15%+"
    X86AudioRaiseVolume

"amixer set Master 15%-"
    X86AudioLowerVolume

"xbacklight -inc 25"
    XF86MonBrightnessUp

"xbacklight -dec 25"
    XF86MonBrightnessDown
' > /home/$USER/.xbindkeysrc
chown $USER:$USER /home/$USER/.xbindkeysrc
if [[ $? != 0 ]]; then exit; fi

# Configre .bachrc
echo 'if [ $(tty) == "/dev/tty1" ]; then
    startx
    ./menu.sh
fi
  
if [ $(tty) == "/dev/tty2" ]; then
    ./options.sh
fi
' >> .bashrc

# Configure autologin
mkdir /etc/systemd/system/getty@tty1.service.d
if [[ $? != 0 ]]; then exit; fi
echo "[Service]
ExecStart=
ExecStart=-/sbin/agetty -a $USER --noclear %I $TERM
" > /etc/systemd/system/getty@tty1.service.d/override.conf

mkdir /etc/systemd/system/getty@tty2.service.d
if [[ $? != 0 ]]; then exit; fi
echo "[Service]
ExecStart=
ExecStart=-/sbin/agetty -a $USER --noclear %I $TERM
" > /etc/systemd/system/getty@tty2.service.d/override.conf

# Set no password sudo
cp /etc/sudoers /etc/sudoers.backup
sed -i 's/ALL=(ALL:ALL) ALL/ALL=(ALL:ALL) NOPASSWD:ALL/g' /etc/sudoers
visudo -c
if [[ $? != 0 ]]; then 
    cp /etc/sudoers.backup /etc/sudoers
    exit
fi

# Configure automount
sed -i 's/usb3/usb3"/g' /etc/usbmount/usbmount.conf
sed -i '/usb7/d' /etc/usbmount/usbmount.conf
if [[ $? != 0 ]]; then exit; fi 
sed -i 's/MountFlags=slave/MountFlags=shared/g' /lib/systemd/system/systemd-udevd.service
if [[ $? != 0 ]]; then exit; fi
rm /media/usb
rm -r /media/usb4 /media/usb5 /media/usb6 /media/usb7
if [[ $? != 0 ]]; then exit; fi

# Create menu and options scripts
echo $MENU | base64 -d > /home/$USER/menu.sh
chmod +x /home/$USER/menu.sh
chown $USER:$USER /home/$USER/menu.sh 
if [[ $? != 0 ]]; then exit; fi


echo $OPTIONS | base64 -d > /home/$USER/options.sh
sed -i "s/zbeny/$USER/g" /home/$USER/options.sh
chmod +x /home/$USER/options.sh
chown $USER:$USER /home/$USER/options.sh
if [[ $? != 0 ]]; then exit; fi

# Configure dosbox
# Create dos directory
mkdir /home/$USER/dos
chown $USER:$USER /home/$USER/dos
if [[ $? != 0 ]]; then exit; fi

# Create dosbox configuration
sudo -u $USER dosbox -editconf cat >> /dev/null
if [[ $? != 0 ]]; then exit; fi

# Set fullscreen
sed -i "s/fullscreen=false/fullscreen=true/g" /home/$USER/.dosbox/dosbox-0.74.conf

# Set mount options
echo "mount c /home/$USER/dos
mount a /media
c:" >> /home/$USER/.dosbox/dosbox-0.74.conf

# Public key for updates
echo $KEY | base64 -d > /home/$USER/public-updates.key
chown $USER:$USER /home/$USER/public-updates.key
if [[ $? != 0 ]]; then exit; fi

# Import key
sudo -u $USER gpg --import /home/$USER/public-updates.key
if [[ $? != 0 ]]; then exit; fi

# Save version info
echo $VERSION > /home/$USER/.system-version 
chown $USER:$USER /home/$USER/.system-version

# Reboot
echo
echo Installation successful - rebooting now!
sleep 5 
reboot
