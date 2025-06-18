@echo off
echo Replacing design-thrid-image-cft- references...

powershell -Command "(Get-Content 'index.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index.htm'"
powershell -Command "(Get-Content 'index.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index.htm'"

powershell -Command "(Get-Content 'index_new.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_new.htm'"
powershell -Command "(Get-Content 'index_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_new.htm'"

powershell -Command "(Get-Content 'index_second_new.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_second_new.htm'"
powershell -Command "(Get-Content 'index_second_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_second_new.htm'"

powershell -Command "(Get-Content 'index_clean.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_clean.htm'"
powershell -Command "(Get-Content 'index_clean.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_clean.htm'"

powershell -Command "(Get-Content 'index_clean_new.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_clean_new.htm'"
powershell -Command "(Get-Content 'index_clean_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_clean_new.htm'"

powershell -Command "(Get-Content 'index_clean_second_new.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_clean_second_new.htm'"
powershell -Command "(Get-Content 'index_clean_second_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_clean_second_new.htm'"

powershell -Command "(Get-Content 'index_backup2.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_backup2.htm'"
powershell -Command "(Get-Content 'index_backup2.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_backup2.htm'"

powershell -Command "(Get-Content 'index_backup2_new.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_backup2_new.htm'"
powershell -Command "(Get-Content 'index_backup2_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_backup2_new.htm'"

powershell -Command "(Get-Content 'index_backup2_second_new.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_backup2_second_new.htm'"
powershell -Command "(Get-Content 'index_backup2_second_new.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_backup2_second_new.htm'"

powershell -Command "(Get-Content 'index_corrected.htm' -Raw) -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_corrected.htm'"
powershell -Command "(Get-Content 'index_corrected.htm' -Raw) -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png' | Set-Content 'index_corrected.htm'"

echo Replacement completed!
pause 