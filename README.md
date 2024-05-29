# MyFixApp System Maintenance Script

This script automates the process of updating, upgrading, and maintaining an Ubuntu system by performing tasks such as removing unnecessary packages and cleaning up the system.

!!!Not: Works only on Debian, Ubuntu based systems.

## For Fedora

## MyFixApp Kurulumu

You can install `MyFixFedora` by running the following commands in the terminal:

```bash
sudo wget https://github.com/OguzhanDUYAR/MyFixAppLinux/raw/main/MyFixFedora.sh -O /usr/bin/MyFixFedora.sh && sudo chmod +x /usr/bin/MyFixFedora.sh && sudo wget https://github.com/OguzhanDUYAR/MyFixAppLinux/raw/main/MyFixFedora.desktop -O /usr/share/applications/MyFixFedora.desktop
```bash


## Features

- Automatically updates and upgrades the system
- Removes unnecessary packages and old kernels
- Cleans up package cache and orphaned packages
- Deletes unnecessary log files and empties the trash
- Updates snap packages
- Displays current disk usage
- Waits for user input before closing

# MyFixApp Sistem Bakım Komut Dosyası

Bu betik, gereksiz paketleri kaldırma ve sistemi temizleme gibi görevleri yerine getirerek bir Ubuntu sistemini güncelleme, yükseltme ve bakım işlemlerini otomatikleştirir.

## Özellikler

- Sistemi otomatik olarak günceller ve yükseltir
- Gereksiz paketleri ve eski çekirdekleri kaldırır
- Paket önbelleğini ve artık paketleri temizler
- Gereksiz günlük dosyalarını siler ve çöp kutusunu boşaltır
- Snap paketlerini günceller
- Geçerli disk kullanımını görüntüler
- Kapatmadan önce kullanıcı girdisini bekler
