@echo off
echo Replacing design-second-image-cft-second9- references in index.htm...

powershell -Command "(Get-Content 'index.htm' -Raw) -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File -Encoding UTF8 'index.htm'"
powershell -Command "(Get-Content 'index.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File -Encoding UTF8 'index.htm'"

powershell -Command "(Get-Content 'index_new.htm' -Raw) -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_new.htm' -Encoding UTF8"
powershell -Command "(Get-Content 'index_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_new.htm' -Encoding UTF8"

powershell -Command "(Get-Content 'index_clean_second_new.htm' -Raw) -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_clean_second_new.htm' -Encoding UTF8"
powershell -Command "(Get-Content 'index_clean_second_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_clean_second_new.htm' -Encoding UTF8"

powershell -Command "(Get-Content 'index_third_new.htm' -Raw) -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_third_new.htm' -Encoding UTF8"
powershell -Command "(Get-Content 'index_third_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^\"\s]+', 'wp-content/uploads/2025/06/second_image.png' | Out-File 'index_third_new.htm' -Encoding UTF8"

echo Replacement completed!
pause 