@echo off
echo Replacing second image URLs...

powershell -Command "(Get-Content 'index.htm' -Raw) -replace 'https://cryptofundtrader\.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_second_final.htm' -Encoding UTF8"

powershell -Command "(Get-Content 'index_new.htm' -Raw) -replace 'https://cryptofundtrader\.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_new_second_final.htm' -Encoding UTF8"

powershell -Command "(Get-Content 'index_clean_second_new.htm' -Raw) -replace 'https://cryptofundtrader\.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_clean_second_new_final.htm' -Encoding UTF8"

powershell -Command "(Get-Content 'index_third_new.htm' -Raw) -replace 'https://cryptofundtrader\.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]*', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_third_new_second_final.htm' -Encoding UTF8"

echo Done!
pause 