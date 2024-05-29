#!/bin/bash

echo "**********************************************"
echo "*                                            *"
echo "*    MyFixFedora v0.1'e Hoş Geldiniz!        *"
echo "*                                            *"
echo "*        İyi günler, $USER!                  *"
echo "*                                            *"
echo "* Güncel Tarih ve Saat: $(date)              *"
echo "* Sistem Çalışma Süresi: $(uptime -p)        *"
echo "*                                            *"
echo "*           Oguzhan DUYAR                    *"
echo "*                                            *"
echo "**********************************************"


# Sistemi otomatik olarak güncelle ve yükselt
echo "Sistem güncelleniyor ve yükseltiliyor..."
sudo dnf update -y

# Gereksiz paketleri otomatik olarak kaldır
echo "Gereksiz paketler kaldırılıyor..."
sudo dnf autoremove -y

# Paket önbelleğini otomatik olarak temizle
echo "Paket önbelleği temizleniyor..."
sudo dnf clean all

# Yetim paketleri temizle
echo "Yetim paketler temizleniyor..."
sudo dnf remove --orphans -y

# Eski çekirdekleri kaldır (mevcut ve önceki olanı koruyarak)
echo "Eski çekirdekler kaldırılıyor..."
sudo dnf remove $(dnf repoquery --installonly --latest-limit=-2 -q)

# /var/log içindeki gereksiz dosyaları sil
echo "Geçici günlük dosyaları temizleniyor..."
sudo find /var/log -type f -name "*.log" -delete

# Çöp kutusundaki dosyaları sil
echo "Çöp kutusu boşaltılıyor..."
rm -rf ~/.local/share/Trash/*

# Flatpak uygulamalarını güncelle
echo "Flatpak uygulamaları güncelleniyor..."
flatpak update -y

# Disk kullanımını göster
echo "Disk kullanımı gösteriliyor..."
df -h

echo "Bakım tamamlandı."
# Kapanmadan önce kullanıcının bir tuşa basmasını bekle
read -n 1 -s -r -p "Devam etmek için bir tuşa basın..."
