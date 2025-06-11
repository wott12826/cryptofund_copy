# Финальный скрипт обновления сайта
Write-Host "Начинаю финальные изменения..."

# Копируем резервную версию как рабочую
Copy-Item "index_backup2.htm" "index_final_version.htm"

# Читаем содержимое файла
$content = [System.IO.File]::ReadAllText("index_final_version.htm", [System.Text.Encoding]::UTF8)

Write-Host "1. Выполняю замены текста..."

# 1. ОСНОВНЫЕ ЗАМЕНЫ ТЕКСТА
$content = $content.Replace("Crypto Fund Trader is an evaluation and educational platform designed", "This is an evaluation and educational platform designed")
$content = $content.Replace("Our goal is to identify", "The goal is to identify")
$content = $content.Replace("How does the Crypto Fund Trader business model work", "How does the platform's business model work")
$content = $content.Replace("USER FRIENDLY TRADING SIMULATION PLATFORM", "USER-FRIENDLY TRADING SIMULATION PLATFORM")
$content = $content.Replace("Crypto Fund Trader provides participants with exclusive access", "Participants receive exclusive access")
$content = $content.Replace("by our internal criteria and", "by internal criteria and")
$content = $content.Replace("discretion of Crypto Fund Trader.", "discretion of the platform.")
$content = $content.Replace("At Crypto Fund Trader we fund with", "We fund with")
$content = $content.Replace("We focus on evaluate the best traders", "We focus on evaluating the best traders")
$content = $content.Replace("Crypto Fund Trader does not impose", "This platform does not impose")
$content = $content.Replace("Crypto Fund Trader is not responsible", "This platform is not responsible")

Write-Host "2. Заменяю три кнопки на одну 'Try Now'..."

# 2. ЗАМЕНА ТРЕХ КНОПОК НА ОДНУ "Try Now"
$oldButtons = @'
							<div class="elementor-container elementor-column-gap-default">
								<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-6b0fdd7"
									data-id="6b0fdd7" data-element_type="column">
									<div class="elementor-widget-wrap elementor-element-populated">
										<div class="elementor-element elementor-element-fb9ec73 cmsmasters-button-align-center cmsmasters-button-mobile-align-center cmsmasters-button-tablet-align-center cmsmasters-block-default cmsmasters-sticky-default elementor-widget elementor-widget-cmsmasters-button"
											data-id="fb9ec73" data-element_type="widget"
											data-widget_type="cmsmasters-button.default">
											<div class="elementor-widget-container">
												<div class="elementor-widget-cmsmasters-button__button-container">
													<div
														class="elementor-widget-cmsmasters-button__button-container-inner cmsmasters-with-percentage">
														<a href="https://mt5.cryptofundtrader.com/terminal"
															class="cmsmasters-button-link elementor-widget-cmsmasters-button__button cmsmasters-icon-view- cmsmasters-icon-shape- cmsmasters-button-size-md"
															role="button"><span
																class="elementor-widget-cmsmasters-button__content-wrapper cmsmasters-align-icon-"><span
																	class="elementor-widget-cmsmasters-button__text">MetaTrader
																	5</span></span></a></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-d968960"
									data-id="d968960" data-element_type="column">
									<div class="elementor-widget-wrap elementor-element-populated">
										<div class="elementor-element elementor-element-0c95109 cmsmasters-button-align-center cmsmasters-button-mobile-align-center cmsmasters-button-tablet-align-center cmsmasters-block-default cmsmasters-sticky-default elementor-widget elementor-widget-cmsmasters-button"
											data-id="0c95109" data-element_type="widget"
											data-widget_type="cmsmasters-button.default">
											<div class="elementor-widget-container">
												<div class="elementor-widget-cmsmasters-button__button-container">
													<div
														class="elementor-widget-cmsmasters-button__button-container-inner cmsmasters-with-percentage">
														<a href="https://trading.cryptofundtrader.com/"
															class="cmsmasters-button-link elementor-widget-cmsmasters-button__button cmsmasters-icon-view- cmsmasters-icon-shape- cmsmasters-button-size-md"
															role="button"><span
																class="elementor-widget-cmsmasters-button__content-wrapper cmsmasters-align-icon-"><span
																	class="elementor-widget-cmsmasters-button__text">Match-Trader</span></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-7e2810f"
									data-id="7e2810f" data-element_type="column">
									<div class="elementor-widget-wrap elementor-element-populated">
										<div class="elementor-element elementor-element-030cf87 cmsmasters-button-align-center cmsmasters-button-mobile-align-center cmsmasters-button-tablet-align-center cmsmasters-block-default cmsmasters-sticky-default elementor-widget elementor-widget-cmsmasters-button"
											data-id="030cf87" data-element_type="widget"
											data-widget_type="cmsmasters-button.default">
											<div class="elementor-widget-container">
												<div class="elementor-widget-cmsmasters-button__button-container">
													<div
														class="elementor-widget-cmsmasters-button__button-container-inner cmsmasters-with-percentage">
														<a href="https://partner.bybitglobal.com/b/120266"
															class="cmsmasters-button-link elementor-widget-cmsmasters-button__button cmsmasters-icon-view- cmsmasters-icon-shape- cmsmasters-button-size-md"
															role="button"><span
																class="elementor-widget-cmsmasters-button__content-wrapper cmsmasters-align-icon-"><span
																	class="elementor-widget-cmsmasters-button__text">BYBIT</span></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
'@

$newButton = @'
							<div class="elementor-container elementor-column-gap-default">
								<div class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-try-now"
									data-id="try-now" data-element_type="column" style="text-align: center;">
									<div class="elementor-widget-wrap elementor-element-populated">
										<div class="elementor-element elementor-element-try-now-btn cmsmasters-button-align-center cmsmasters-button-mobile-align-center cmsmasters-button-tablet-align-center cmsmasters-block-default cmsmasters-sticky-default elementor-widget elementor-widget-cmsmasters-button"
											data-id="try-now-btn" data-element_type="widget"
											data-widget_type="cmsmasters-button.default">
											<div class="elementor-widget-container">
												<div class="elementor-widget-cmsmasters-button__button-container">
													<div
														class="elementor-widget-cmsmasters-button__button-container-inner cmsmasters-with-percentage">
														<a href="#programs"
															class="cmsmasters-button-link elementor-widget-cmsmasters-button__button cmsmasters-icon-view- cmsmasters-icon-shape- cmsmasters-button-size-lg"
															role="button" style="background-color: #f3cb45; color: #000; padding: 15px 40px; font-size: 18px; font-weight: bold; border-radius: 8px;"><span
																class="elementor-widget-cmsmasters-button__content-wrapper cmsmasters-align-icon-"><span
																	class="elementor-widget-cmsmasters-button__text">Try Now</span></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
'@

$content = $content.Replace($oldButtons, $newButton)

Write-Host "3. Удаляю блок REAL TIME FINAL STAGE TRADERS..."

# 3. УДАЛЕНИЕ БЛОКА "REAL TIME FINAL STAGE TRADERS"
# Ищем начало секции
$startPattern = '<section data-particle_enable="false" data-particle-mobile-disabled="false"[^>]*elementor-element-67fa5bd[^>]*>'
$endPattern = '</section>'

# Используем regex для удаления всей секции
$content = $content -replace '(?s)<section[^>]*elementor-element-67fa5bd[^>]*>.*?</section>', ''

Write-Host "4. Добавляю ссылки на файлы анимации..."

# 4. ДОБАВЛЕНИЕ ССЫЛОК НА ФАЙЛЫ АНИМАЦИИ
$headEndPattern = '</head>'
$animationLinks = @'
	<!-- Fancy Text Animation Fix -->
	<link rel="stylesheet" type="text/css" href="fancy-text-fix.css">
	<script type="text/javascript" src="fancy-text-fix.js"></script>
</head>
'@

$content = $content.Replace('</head>', $animationLinks)

# Сохраняем результат
[System.IO.File]::WriteAllText("index_final_version.htm", $content, [System.Text.Encoding]::UTF8)

Write-Host "Готово! Все изменения завершены. Результат сохранен в index_final_version.htm"
Write-Host "Переименовываю финальную версию в index.htm..."

# Заменяем основной файл
Copy-Item "index_final_version.htm" "index.htm"

Write-Host "✅ Все обновления завершены успешно!" 