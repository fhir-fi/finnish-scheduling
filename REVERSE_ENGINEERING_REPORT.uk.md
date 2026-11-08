# REVERSE_ENGINEERING_REPORT — finnish-scheduling

## A. Загальний діагноз

### Виявлена архітектура
Інструкція щодо впровадження (IG) FHIR на основі SUSHI для планування охорони здоров'я в Фінляндії (Finnish HL7 FHIR Scheduling). Структура:

- `sushi-config.yaml`: НЕ ЗНАЙДЕНО в корені
- `input/fsh/profiles/FiSchedulingAppointment.fsh`, `FiSchedulingHealthcareService.fsh`: 2 профілі FHIR
- `input/fsh/extensions/`: 19 розширень FHIR
- `input/fsh/mappings/`: мапінги
- `input/fsh/aliases.fsh`: альіаси
- `input/fsh/examples/`: приклади
- `input/pagecontent/*.md`: сторінки IG
- `input/includes/*.html`: HTML-фрагменти
- `ig.ini`: конфігурація видавця IG
- `.github/workflows/build.yml` та `.github/workflows/pr-verification.yml`: існують workflow CI
- Немає Dockerfile

### Технології та залежності
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Немає автоматизованих тестів

### Стан підтримки
Гałтьова гілка: master. Репозиторій: https://github.com/fhir-fi/finnish-scheduling. Автоматизовані збірки через інфраструктуру build.fhir.org.

### Існуючі механізми тестування
Автоматизованих тестів не виявлено для FSH/StructureDefinitions.

### Обмеження дослідження
- SUSHI не встановлений; збірку IG не виконано.

## B. Виявлені проблеми

| ID | Заголовок | Severity | Статус | Локація |
|----|-----------|----------|--------|----------|
| REA-finnishsched-001 | Немає sushi-config.yaml у корені | P3 | CONFIRMED | корінь проєкту |
| REA-finnishsched-002 | Немає автоматизованих тестів для FSH/StructureDefinitions | P3 | CONFIRMED | корінь проєкту |
| REA-finnishsched-003 | Визначено лише 2 профілі FSH | P3 | CONFIRMED | `input/fsh/profiles/` |

### Деталі підтверджених проблем

**REA-finnishsched-001 (P3, CONFIRMED)**: Немає `sushi-config.yaml` в корені репозиторію. Конфігурація SUSHI не версійована у репозиторії (збірка виконується зовнішньо через build.fhir.org).

**REA-finnishsched-002 (P3, CONFIRMED)**: Немає автоматизованих тестів для валідації профілів FHIR ani згенерованих StructureDefinitions.

**REA-finnishsched-003 (P3, CONFIRMED)**: Існує лише 2 профілі FSH (FiSchedulingAppointment, FiSchedulingHealthcareService), з 19 розширеннями. Обмежений охоплення для повного IG планування.

## C. Повторювані проблеми
Повторювалися публічні проблеми не знайдено.

## D. Недокументовані помилки
Усі пункти розділу B — це проблеми, що раніше не були задокументовано.

## E. Продуктивність
Статична збірка IG через SUSHI/build.fhir.org. Немає операцій, чутливих до продуктивності.

## F. Технічні вдосконалення
- Додати sushi-config.yaml (REA-finnishsched-001)
- Додати тести FSH (REA-finnishsched-002)
- Розширити кількість профілів FSH (REA-finnishsched-003)
- `releaseLabel` не застосовується (немає sushi-config.yaml)

## G. План виконання
Усі правки незалежні та низькоризичні.

## H. Очікуваний результат
Більш повний IG з версійованою конфігурацією, автоматизованим тестуванням і більшою кількістю профілів.

**Інструменти:** git, gh, PowerShell, статичний аналіз коду.  
**Обмеження:** SUSHI не встановлений.  
**Середовище:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\finnish-scheduling` (клон upstream, гілка master).

Переклад технічний, виконаний автоматизовано; рекомендується перегляд носієм мови перед використанням якнормативного посилання.
