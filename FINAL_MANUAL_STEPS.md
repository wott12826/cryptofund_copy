# 🎯 ФИНАЛЬНЫЕ РУЧНЫЕ ИЗМЕНЕНИЯ

## 📁 РАБОТАЕМ С ФАЙЛОМ: `index_backup2.htm`

### ✅ ГОТОВЫЕ ФАЙЛЫ:
- `fancy-text-fix.css` ✓
- `fancy-text-fix.js` ✓
- `demo_updated_site.html` ✓ (показывает результат)

---

## 🔧 ПОШАГОВЫЕ ДЕЙСТВИЯ

### 1️⃣ **ОТКРОЙТЕ ФАЙЛ В ТЕКСТОВОМ РЕДАКТОРЕ**
```
Файл: index_backup2.htm
Редактор: Notepad++ (рекомендуется) или обычный Notepad
```

### 2️⃣ **ДОБАВЬТЕ ФАЙЛЫ АНИМАЦИИ**
**Найти:** `</head>` (строка 1615)
**Добавить ПЕРЕД закрывающим тегом:**
```html
<!-- Fancy Text Animation Fix -->
<link rel="stylesheet" type="text/css" href="fancy-text-fix.css">
<script type="text/javascript" src="fancy-text-fix.js"></script>
```

### 3️⃣ **ОСНОВНЫЕ ЗАМЕНЫ ТЕКСТА**

#### A. Первый блок (строка ~2327)
**Найти:**
```
Crypto Fund Trader is an evaluation and educational platform designed
```
**Заменить на:**
```
This is an evaluation and educational platform designed
```

#### B. Цель (строка ~2330)
**Найти:**
```
Our goal is to identify
```
**Заменить на:**
```
The goal is to identify
```

#### C. Вопрос (строка ~2381)
**Найти:**
```
How does the Crypto Fund Trader business model work
```
**Заменить на:**
```
How does the platform's business model work
```

#### D. Заголовок платформы (строка ~8523)
**Найти:**
```
USER FRIENDLY TRADING SIMULATION PLATFORM
```
**Заменить на:**
```
USER-FRIENDLY TRADING SIMULATION PLATFORM
```

#### E. Доступ к платформам (строка ~8525)
**Найти:**
```
Crypto Fund Trader provides participants with exclusive access
```
**Заменить на:**
```
Participants receive exclusive access
```

### 4️⃣ **REWARD STRUCTURE (строки ~8632-8635)**

#### A.
**Найти:**
```
by our internal criteria and
```
**Заменить на:**
```
by internal criteria and
```

#### B.
**Найти:**
```
discretion of Crypto Fund Trader.
```
**Заменить на:**
```
discretion of the platform.
```

### 5️⃣ **FAQ СЕКЦИЯ**

#### A. Заголовок аккаунта
**Найти:**
```
WHAT IS THE CRYPTO FUND TRADER ACCOUNT?
```
**Заменить на:**
```
WHAT IS A TRADER EVALUATION ACCOUNT?
```

#### B. Финансирование
**Найти:**
```
At Crypto Fund Trader we fund with
```
**Заменить на:**
```
We fund with
```

#### C. Заработок
**Найти:**
```
CAN I MAKE MONEY WITH CRYPTO FUND TRADER?
```
**Заменить на:**
```
CAN I MAKE MONEY THROUGH THIS PLATFORM?
```

#### D. Грамматика
**Найти:**
```
We focus on evaluate the best traders
```
**Заменить на:**
```
We focus on evaluating the best traders
```

#### E. Страны
**Найти:**
```
WHICH COUNTRIES ARE ALLOWED TO JOIN CRYPTO FUND TRADER?
```
**Заменить на:**
```
WHICH COUNTRIES ARE ALLOWED TO JOIN?
```

#### F. Ограничения платформы
**Найти:**
```
Crypto Fund Trader does not impose
```
**Заменить на:**
```
This platform does not impose
```

**Найти:**
```
Crypto Fund Trader is not responsible
```
**Заменить на:**
```
This platform is not responsible
```

### 6️⃣ **ЗАМЕНА ТРЕХ КНОПОК НА ОДНУ (строки ~8547-8610)**

**Найти весь блок:**
```html
<div class="elementor-container elementor-column-gap-default">
    <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-6b0fdd7">
        <!-- MetaTrader 5 button content -->
    </div>
    <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-d968960">
        <!-- Match-Trader button content -->
    </div>
    <div class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-7e2810f">
        <!-- BYBIT button content -->
    </div>
</div>
```

**Заменить ВСЕМ этим блоком:**
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
                               style="background-color: #ff00f5; color: #000; padding: 15px 40px; font-size: 18px; font-weight: bold; border-radius: 8px;">
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

### 7️⃣ **УДАЛИТЬ БЛОК "REAL TIME FINAL STAGE TRADERS"**

**Найти и ПОЛНОСТЬЮ УДАЛИТЬ секцию (строка ~8999):**
```html
<section data-particle_enable="false" data-particle-mobile-disabled="false"
         class="elementor-section elementor-top-section elementor-element elementor-element-67fa5bd elementor-section-boxed elementor-section-height-default elementor-section-height-default cmsmasters-block-default"
         data-id="67fa5bd" data-element_type="section" id="funded-traders"
         data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;_ha_eqh_enable&quot;:false}">
    <!-- ВСЁ СОДЕРЖИМОЕ ВПЛОТЬ ДО -->
</section>
```

---

## 💾 **СОХРАНЕНИЕ**

1. **Сохраните изменения как:** `index.htm`
2. **Убедитесь, что рядом есть:**
   - `fancy-text-fix.css`
   - `fancy-text-fix.js`

---

## ✅ **ПРОВЕРКА**

После изменений откройте `index.htm` в браузере и проверьте:
- [ ] Анимация "Trade like a whale/institution" работает
- [ ] Цвет анимации золотистый (#ff00f5)  
- [ ] Вместо трех кнопок одна "Try Now"
- [ ] Блок сертификатов удален
- [ ] Все упоминания "Crypto Fund Trader" заменены

**🎉 ГОТОВО!** Все изменения применены успешно. 