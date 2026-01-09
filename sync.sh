#!/bin/bash

# Dotfiles dizini
DOT_DIR="$HOME/dotfiles"

# Kopyalanacak dosyalar/klasörler (Buraya ekleme yapabilirsin)
items=(
    ".zshrc"
    ".bashrc"
    ".alias"
    ".vimrc"
    ".config/hypr"
    ".config/waybar"
    ".config/rofi"
    ".config/kitty"
    ".config/nvim"
    ".config/fastfetch"
    ".config/ghostty"
)

echo "--- Yedekleme Başlıyor ---"

for item in "${items[@]}"; do
    # Eğer öğe bir klasörse içindekilerle beraber kopyala
    if [ -e "$HOME/$item" ]; then
        # Hedef klasör yapısını oluştur
        mkdir -p "$DOT_DIR/$(dirname "$item")"
        # Kopyala (-r: recursive, -u: sadece yeni olanları)
        cp -ru "$HOME/$item" "$DOT_DIR/$item"
        echo "✔ $item kopyalandı."
    else
        echo "✘ $item bulunamadı, atlanıyor."
    fi
done

# Paket listesini de yedekle
dnf list installed | awk '{print $1}' > "$DOT_DIR/installed_packages.txt"
echo "✔ Paket listesi güncellendi."

echo "--- GitHub'a Gönderiliyor ---"
cd "$DOT_DIR"
git add .
git commit -m "Güncelleme: $(date +'%d-%m-%Y %H:%M')"
# Eğer remote eklediysen alttaki satırı aktif et:
# git push origin main

echo "--- İşlem Tamam! ---"
