
# Add NAS SMB mount

<https://linuxhint.com/mount-smb-shares-on-ubuntu/>

```
    sudo apt update
    sudo apt install cifs-utils

    sudo mkdir /media/share
    sudo nano ~/.nascreds

    username=example_username
    password=example_password

    sudo chmod 777 ~/.nascreds

    sudo mount -t cifs -o rw,vers=3.0,credentials=/home/{USER_NAME}/.nascreds,uid=$(id -u),gid=$(id -g) //192.168.1.103/share /media/share
    sudo umount /media/share

    # auto mount on system reboot
    sudo nano /etc/fstab

    //192.168.1.103/share /media/share cifs credentials=/home/{USER_NAME}/.nascreds,rw,uid=1001,gid=1001,forceuid,forcegid,iocharset=utf8,file_mode=0777,dir_mode=0777 0 0

```

