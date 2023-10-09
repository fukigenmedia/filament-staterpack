#!/bin/bash

secret=""
view="errors/402"

echo "🔄 Mematikan akses aplikasi..."
php artisan down --render="$view" --secret="$secret"
echo "🔄 Menampilkan halaman pembayaran..."
echo "✅ Akses telah dimatikan."

echo ""
echo "🈴 Anda tetap dapat mengaksesnya dengan memasukkan:"
echo "   secret: $secret"
echo "   pada url, contoh: https://domain-website.com/{secret}"