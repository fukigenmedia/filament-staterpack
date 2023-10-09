#!/bin/bash

echo "🔄 Mengambil perubahan dari Git repository..."
git pull origin
echo "✅ Perubahan telah diambil."

echo "📦 Menginstall dependensi dengan Composer..."
composer install
echo "✅ Dependensi telah diinstal."

echo "🗃️ Migrasi database dengan perintah artisan..."
php artisan migrate --force
echo "✅ Migrasi database selesai."

echo "🧹 Membersihkan cache dengan perintah artisan..."
php artisan optimize:clear
echo "✅ Cache telah dibersihkan."

last_commit=$(git log --oneline -n 1)
echo "🔍 Commit terakhir:"
echo "$last_commit"

version=$(grep -E "'version' =>" config/fukigen.php | awk -F "'" '{print $4}')
echo "🎉 Aplikasi berhasil diupdate (v.$version)"
