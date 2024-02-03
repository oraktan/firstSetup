#!/bin/bash

# Sistem paketlerini güncelle
sudo apt-get update

# Vim, Git, wget, curl ve lynx paketlerini yükle
sudo apt-get install -y vim git wget curl lynx terminator

# Hedef dizini belirtin (burada ~ kullanılarak ev dizini ifade edilmiştir)
target_dir=~

# Kopyalanacak dosyaların bulunduğu dizini belirtin
source_dir=.

# Dosyaların kopyalanacağı dizine gidin
cd "$source_dir"

# Her dosya için işlem yapın, gizli dosyaları da içerir
for file in .* *; do
    # Nokta ile başlamayan dosyaları ve dizinleri kontrol et
    if [[ ! "$file" =~ ^\.$ && ! "$file" =~ ^\.\.$ ]]; then
        # Hedef dizinde aynı isimde bir dosya var mı kontrol edin
        if [ -e "$target_dir/$file" ]; then
            # Eğer varsa, dosyanın sonuna ".old" ekleyerek kopyalayın
            cp "$file" "$target_dir/${file}.old"
        fi
    fi
done

