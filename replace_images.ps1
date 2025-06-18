Write-Host "Replacing design-thrid-image-cft- references..." -ForegroundColor Green

$files = @(
    'index.htm',
    'index_new.htm', 
    'index_second_new.htm',
    'index_clean.htm',
    'index_clean_new.htm',
    'index_clean_second_new.htm',
    'index_backup2.htm',
    'index_backup2_new.htm',
    'index_backup2_second_new.htm',
    'index_corrected.htm'
)

foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "Processing $file..." -ForegroundColor Yellow
        
        # Read file content
        $content = Get-Content $file -Raw
        
        # Replace relative paths
        $content = $content -replace 'wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png'
        
        # Replace absolute paths
        $content = $content -replace 'https://cryptofundtrader.com/wp-content/uploads/2024/03/design-thrid-image-cft-[^\"\s]+', 'wp-content/uploads/2025/06/third_image.png'
        
        # Write back to file
        Set-Content $file $content -Encoding UTF8
        
        Write-Host "Completed $file" -ForegroundColor Green
    } else {
        Write-Host "File $file not found, skipping..." -ForegroundColor Red
    }
}

Write-Host "All replacements completed!" -ForegroundColor Green
Read-Host "Press Enter to continue" 