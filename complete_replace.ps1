# Скрипт для замены всего текста на сайте
Write-Host "Начинаю замены текста..."

# Копируем резервную версию как рабочую
Copy-Item "index_backup2.htm" "index_updated.htm"

# Читаем содержимое файла
$content = Get-Content "index_updated.htm" -Raw -Encoding UTF8

# 1. ПЕРВЫЙ БЛОК - основное описание
$content = $content -replace "Crypto Fund Trader is an evaluation and educational platform designed", "This is an evaluation and educational platform designed"
$content = $content -replace "Our goal is to identify", "The goal is to identify"
$content = $content -replace "How does the Crypto Fund Trader business model work", "How does the platform's business model work"

# 2. ВТОРОЙ БЛОК - USER FRIENDLY TRADING
$content = $content -replace "USER FRIENDLY TRADING SIMULATION PLATFORM", "USER-FRIENDLY TRADING SIMULATION PLATFORM"
$content = $content -replace "Crypto Fund Trader provides participants with exclusive access", "Participants receive exclusive access"

# 3. БЛОК REWARD STRUCTURE
$content = $content -replace "by our internal criteria and", "by internal criteria and"
$content = $content -replace "discretion of Crypto Fund Trader\.", "discretion of the platform."

# 4. FAQ - простые замены заголовков и текста
$content = $content -replace "WHAT IS THE CRYPTO FUND TRADER ACCOUNT\?", "WHAT IS A TRADER EVALUATION ACCOUNT?"
$content = $content -replace "At Crypto Fund Trader we fund with", "We fund with"
$content = $content -replace "CAN I MAKE MONEY WITH CRYPTO FUND TRADER\?", "CAN I MAKE MONEY THROUGH THIS PLATFORM?"
$content = $content -replace "We focus on evaluate the best traders", "We focus on evaluating the best traders"
$content = $content -replace "WHICH COUNTRIES ARE ALLOWED TO JOIN CRYPTO FUND TRADER\?", "WHICH COUNTRIES ARE ALLOWED TO JOIN?"

# 5. Замены в JSON данных для FAQ
$content = $content -replace "Crypto Fund Trader does not impose", "This platform does not impose"
$content = $content -replace "Crypto Fund Trader is not responsible", "This platform is not responsible"

# Сохраняем результат
$content | Set-Content "index_updated.htm" -Encoding UTF8

Write-Host "Замены завершены! Результат сохранен в index_updated.htm" 