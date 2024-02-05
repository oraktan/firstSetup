#!/bin/bash

git add .      # Tüm dosyaları (dizin içeriğini) ekleyin
git commit -m "vimrc files have been added "  # Bir commit oluşturun
git push origin main  # Değişiklikleri GitHub'a yükleyin


#ssh bağlantısının olup olmadığını söylüyor
ssh -T git@github.com


git remote set-url origin git@github.com:oraktan/firstSetup.git

