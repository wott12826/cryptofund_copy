# Script to replace design-second-image-cft-second9- URLs with second_image.png

$files = @(
    "index.htm",
    "index_new.htm", 
    "index_clean_second_new.htm",
    "index_third_new.htm"
)

foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "Processing $file..."
        
        $content = Get-Content $file -Raw -Encoding UTF8
        
        # Replace full URLs
        $content = $content -replace 'https://cryptofundtrader\.com/wp-content/uploads/2025/06/design-second-image-cft-second9-[^"\s]*', 'wp-content/uploads/2025/06/second_image.png'
        
        # Replace relative paths
        $content = $content -replace 'wp-content/uploads/2025/06/design-second-image-cft-second9-[^"\s]*', 'wp-content/uploads/2025/06/second_image.png'
        
        $outputFile = $file -replace '\.htm$', '_second_replaced.htm'
        $content | Out-File $outputFile -Encoding UTF8
        
        Write-Host "Created $outputFile"
    } else {
        Write-Host "File $file not found"
    }
}

Write-Host "All replacements completed!" 