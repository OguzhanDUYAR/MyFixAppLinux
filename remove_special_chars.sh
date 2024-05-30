#!/bin/bash

# Özel karakterlerin listesini belirleyin
SPECIAL_CHARS="@#!$%^&*()"

# Bulunduğunuz dizindeki tüm dosyaları döngüyle işleyin
for file in *; do
    # Yeni dosya adını özel karakterler olmadan oluşturun
    new_file=$(echo "$file" | tr -d "$SPECIAL_CHARS")
    
    # Dosya adının değişip değişmediğini kontrol edin
    if [ "$file" != "$new_file" ]; then
        mv "$file" "$new_file"
        echo "Renamed '$file' to '$new_file'"
    fi
done
