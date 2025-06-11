# 📋 РУКОВОДСТВО ПО РУЧНЫМ ИЗМЕНЕНИЯМ

## 🎯 Цель
Применить все требуемые изменения к файлу `index.htm` вручную.

## 📁 Файлы для работы
- **Основной файл:** `index_backup2.htm` (чистая версия)
- **Файлы анимации:** `fancy-text-fix.css` и `fancy-text-fix.js` (уже готовы)
- **Демо:** `demo_updated_site.html` (показывает результат)

---

## 🔧 ПОШАГОВЫЕ ИЗМЕНЕНИЯ

### 1️⃣ АНИМАЦИЯ FANCY TEXT

**В секции `<head>` добавить перед `</head>`:**
```html
<!-- Fancy Text Animation Fix -->
<link rel="stylesheet" type="text/css" href="fancy-text-fix.css">
<script type="text/javascript" src="fancy-text-fix.js"></script>
```

### 2️⃣ ЗАМЕНЫ ТЕКСТА

#### A. Основное описание (строка ~2327)
**НАЙТИ:**
```
Crypto Fund Trader is an evaluation and educational platform designed
```
**ЗАМЕНИТЬ НА:**
```
This is an evaluation and educational platform designed
```

#### B. Цель проекта (строка ~2330)
**НАЙТИ:**
```
Our goal is to identify
```
**ЗАМЕНИТЬ НА:**
```
The goal is to identify
```

#### C. Вопрос бизнес-модели (строка ~2381)
**НАЙТИ:**
```
How does the Crypto Fund Trader business model work
```
**ЗАМЕНИТЬ НА:**
```
How does the platform's business model work
```

#### D. Заголовок платформы (строка ~8523)
**НАЙТИ:**
```
USER FRIENDLY TRADING SIMULATION PLATFORM
```
**ЗАМЕНИТЬ НА:**
```
USER-FRIENDLY TRADING SIMULATION PLATFORM
```

#### E. Доступ к платформам (строка ~8525)
**НАЙТИ:**
```
Crypto Fund Trader provides participants with exclusive access
```
**ЗАМЕНИТЬ НА:**
```
Participants receive exclusive access
```

#### F. Reward Structure (строка ~8632)
**НАЙТИ:**
```
by our internal criteria and
```
**ЗАМЕНИТЬ НА:**
```
by internal criteria and
```

#### G. Discretion (строка ~8635)
**НАЙТИ:**
```
discretion of Crypto Fund Trader.
```
**ЗАМЕНИТЬ НА:**
```
discretion of the platform.
```

### 3️⃣ ЗАМЕНА ТРЕХ КНОПОК НА ОДНУ

**НАЙТИ секцию со строки ~8547:**
```html
<div class="elementor-container elementor-column-gap-default">
    <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-6b0fdd7">
        <!-- MetaTrader 5 button -->
    </div>
    <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-d968960">
        <!-- Match-Trader button -->
    </div>
    <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-7e2810f">
        <!-- BYBIT button -->
    </div>
</div>
```

**ЗАМЕНИТЬ НА:**
```html
<div class="elementor-container elementor-column-gap-default">
    <div class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-try-now"
         data-id="try-now" data-element_type="column" style="text-align: center;">
        <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-try-now-btn cmsmasters-button-align-center cmsmasters-button-mobile-align-center cmsmasters-button-tablet-align-center cmsmasters-block-default cmsmasters-sticky-default elementor-widget elementor-widget-cmsmasters-button"
                 data-id="try-now-btn" data-element_type="widget"
                 data-widget_type="cmsmasters-button.default">
                <div class="elementor-widget-container">
                    <div class="elementor-widget-cmsmasters-button__button-container">
                        <div class="elementor-widget-cmsmasters-button__button-container-inner cmsmasters-with-percentage">
                            <a href="#programs"
                               class="cmsmasters-button-link elementor-widget-cmsmasters-button__button cmsmasters-icon-view- cmsmasters-icon-shape- cmsmasters-button-size-lg"
                               role="button" 
                               style="background-color: #f3cb45; color: #000; padding: 15px 40px; font-size: 18px; font-weight: bold; border-radius: 8px;">
                                <span class="elementor-widget-cmsmasters-button__content-wrapper cmsmasters-align-icon-">
                                    <span class="elementor-widget-cmsmasters-button__text">Try Now</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
```

### 4️⃣ УДАЛЕНИЕ БЛОКА "REAL TIME FINAL STAGE TRADERS"

**НАЙТИ И УДАЛИТЬ всю секцию начиная со строки ~8999:**
```html
<section data-particle_enable="false" data-particle-mobile-disabled="false"
         class="elementor-section elementor-top-section elementor-element elementor-element-67fa5bd elementor-section-boxed elementor-section-height-default elementor-section-height-default cmsmasters-block-default"
         data-id="67fa5bd" data-element_type="section" id="funded-traders"
         data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;_ha_eqh_enable&quot;:false}">
    <!-- ВСЁ СОДЕРЖИМОЕ ЭТОЙ СЕКЦИИ -->
</section>
```

### 5️⃣ FAQ ИЗМЕНЕНИЯ

#### A. Заголовок аккаунта
**НАЙТИ:**
```
WHAT IS THE CRYPTO FUND TRADER ACCOUNT?
```
**ЗАМЕНИТЬ НА:**
```
WHAT IS A TRADER EVALUATION ACCOUNT?
```

#### B. Текст про финансирование
**НАЙТИ:**
```
At Crypto Fund Trader we fund with
```
**ЗАМЕНИТЬ НА:**
```
We fund with
```

#### C. Вопрос о заработке
**НАЙТИ:**
```
CAN I MAKE MONEY WITH CRYPTO FUND TRADER?
```
**ЗАМЕНИТЬ НА:**
```
CAN I MAKE MONEY THROUGH THIS PLATFORM?
```

#### D. Исправление грамматики
**НАЙТИ:**
```
We focus on evaluate the best traders
```
**ЗАМЕНИТЬ НА:**
```
We focus on evaluating the best traders
```

#### E. Вопрос о странах
**НАЙТИ:**
```
WHICH COUNTRIES ARE ALLOWED TO JOIN CRYPTO FUND TRADER?
```
**ЗАМЕНИТЬ НА:**
```
WHICH COUNTRIES ARE ALLOWED TO JOIN?
```

#### F. Ограничения платформы
**НАЙТИ:**
```
Crypto Fund Trader does not impose
```
**ЗАМЕНИТЬ НА:**
```
This platform does not impose
```

**НАЙТИ:**
```
Crypto Fund Trader is not responsible
```
**ЗАМЕНИТЬ НА:**
```
This platform is not responsible
```

---

## ✅ ПРОВЕРКА РЕЗУЛЬТАТА

После всех изменений:

1. **Анимация fancy text** должна работать с золотистым цветом #F3CB45
2. **Заголовок** изменен на "TRADER EVALUATION PLATFORM"
3. **Три кнопки** заменены на одну "Try Now"
4. **Блок сертификатов** удален
5. **Все упоминания "Crypto Fund Trader"** заменены на нейтральные формулировки

## 🎯 ФИНАЛЬНЫЙ ФАЙЛ

Сохраните изменения как `index.htm` и убедитесь, что файлы `fancy-text-fix.css` и `fancy-text-fix.js` находятся в той же папке.

---

## 📝 ПРИМЕЧАНИЯ

- Используйте поиск по тексту в редакторе (Ctrl+F) для быстрого нахождения нужных фрагментов
- Делайте резервные копии перед изменениями
- Тестируйте изменения в браузере после каждого этапа
- Файл `demo_updated_site.html` показывает финальный результат 