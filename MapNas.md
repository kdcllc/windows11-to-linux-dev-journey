
# Add NAS SMB mount

<https://linuxhint.com/mount-smb-shares-on-ubuntu/>

```
    
    sudo mkdir /media/share
    sudo nano /root/.nascreds

    username=example_username
    password=example_password

    sudo chmod 400 /root/.nascreds

    sudo mount -t cifs -o rw,vers=3.0,credentials=/root/.nascreds //192.168.1.103/share /media/share

    # auto mount on system reboot
    sudo nano /etc/fstab

    //192.168.1.103/share /media/share cifs vers=3.0,credentials=/root/.nascreds
```

