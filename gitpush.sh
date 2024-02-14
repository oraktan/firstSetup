#!/bin/bash

# Tüm dosyaları (dizin içeriğini) ekleyin
git add .

# Kullanıcıdan commit mesajını alın
echo "Enter your commit message:"
read commit_message

# Girilen commit mesajıyla bir commit oluşturun
git commit -m "$commit_message"

# SSH bağlantısının olup olmadığını kontrol edin
ssh -T git@github.com

# Remote URL'yi ayarlayın
git remote set-url origin git@github.com:oraktan/firstSetup.git

# Değişiklikleri GitHub'a yükleyin
git push origin main

