#!/bin/bash

# Hedef dizini belirtin (burada ~ kullanılarak ev dizini ifade edilmiştir)
target_dir=~

# Kopyalanacak dosyaların bulunduğu dizini belirtin
source_dir=.

# Dosyaların kopyalanacağı dizine gidin
cd $source_dir

# Her dosya için işlem yapın
for file in *; do
    # Hedef dizinde aynı isimde bir dosya var mı kontrol edin
    if [ -e "$target_dir/$file" ]; then
        # Eğer varsa, dosyanın sonuna ".old" ekleyerek kopyalayın
        cp "$file" "$target_dir/${file}.old"
        echo "Dosya kopyalandı: $file -> ${file}.old"
    else
        # Eğer yoksa, normal şekilde kopyalayın
        cp "$file" "$target_dir/"
        echo "Dosya kopyalandı: $file"
    fi
done

echo "İşlem tamamlandı."

