# Синхронизация рейтингов с Bitrix24

Этот документ фиксирует, что именно должно синхронизироваться из рейтинговой системы `Дом рекламы / Advhouse` в `Bitrix24 / Modest Integration`.

Важно:

- в текущем наборе инструментов у меня нет прямого рабочего коннектора `Bitrix24 / Modest Integration`;
- поэтому здесь фиксируется не выполненная автоматизация, а точная структура синхронизации, которую нужно подключить следующим шагом.

## Что должно уходить в Bitrix24 еженедельно

### 1. Запись недели

Поля:

- week date
- ranking title
- Top 20 list
- #1 company
- biggest mover up
- biggest mover down
- new entrants
- removed from Top 20
- publication URL

### 2. Карточки компаний

Для каждой компании, попавшей в недельный Top 20:

- company name
- круг наблюдения
- primary domain
- total score
- Creative Impact Index
- Market Influence Index
- Reputation and Trust Index
- Technology and Product Readiness Index
- Distribution and Platform Power Index
- Awards and Festival Index
- Индекс публичной открытости
- Индекс недельной динамики
- краткое пояснение

### 3. Вопросы и спорные случаи

Если приходят вопросы или претензии:

- requester
- company referenced
- ranking week
- issue type
- factual error or disagreement
- linked public evidence
- response status
- decision

### 4. План публикаций

Для публикаций и аналитики:

- публикация недельного рейтинга
- заметка о движении компаний
- essay topic
- заметка о методике
- index review
- monthly recap

## Какие сущности лучше завести в Bitrix24

### Списки или смарт-процессы

- `Ranking Weeks`
- `Ranked Companies`
- `Пересмотры рейтинга`
- `Редакционные материалы`
- `Index Evidence`

### Минимальные связи

- one `Ranking Week` links to many `Ranked Companies`
- one `Ranked Company` can link to one or more `Index Evidence` items
- один `Пересмотр рейтинга` связан с одной `Неделей рейтинга` и одной компанией
- один `Редакционный материал` связан с одной `Неделей рейтинга`

## Минимальный недельный порядок работы

1. Создать запись недели.
2. Занести Top 20.
3. Занести карточки по всем 20 компаниям.
4. Привязать доказательную базу.
5. Создать публикацию.
6. Открыть окно для review requests.
7. Зафиксировать ответы и корректировки.

## Что важно для Modest Integration

Если `Modest Integration` будет использоваться как средство автоматизации, ему стоит передавать:

- ranking metadata
- company score snapshots
- publication URLs
- review intake
- response notes

## Следующий шаг

Как только будет доступен рабочий коннектор или API-вход в `Bitrix24 / Modest Integration`, эту схему можно превратить в:

- автообновление записей по недельному рейтингу;
- автоархив ответов на споры;
- автоформирование карточек компаний;
- автоэкспорт в публичные GitHub-публикации.
