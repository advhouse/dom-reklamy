# Bitrix24 Ranking Sync

Этот документ фиксирует, что именно должно синхронизироваться из рейтинговой системы `Дом рекламы / Advhouse` в `Bitrix24 / Modest Integration`.

Важно:

- в текущем наборе инструментов у меня нет прямого рабочего коннектора `Bitrix24 / Modest Integration`;
- поэтому здесь фиксируется не выполненная автоматизация, а точная структура синхронизации, которую нужно подключить следующим шагом.

## Что должно уходить в Bitrix24 еженедельно

### 1. Weekly ranking record

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

### 2. Company scorecards

Для каждой компании, попавшей в weekly Top 20:

- company name
- layer
- primary domain
- total score
- Creative Impact Index
- Market Influence Index
- Reputation and Trust Index
- Technology and Product Readiness Index
- Distribution and Platform Power Index
- Awards and Festival Index
- Public Signal and Openness Index
- Weekly Momentum Index
- short reasoning note

### 3. Review and conflict intake

Если приходят вопросы или претензии:

- requester
- company referenced
- ranking week
- issue type
- factual error or disagreement
- linked public evidence
- response status
- decision

### 4. Editorial pipeline

Для публикаций и аналитики:

- weekly ranking post
- weekly movement note
- essay topic
- methodology note
- index review
- monthly recap

## Какие сущности лучше завести в Bitrix24

### Lists or smart processes

- `Ranking Weeks`
- `Ranked Companies`
- `Ranking Reviews`
- `Editorial Outputs`
- `Index Evidence`

### Minimum linkage

- one `Ranking Week` links to many `Ranked Companies`
- one `Ranked Company` can link to one or more `Index Evidence` items
- one `Ranking Review` links to one `Ranking Week` and one company
- one `Editorial Output` links to one `Ranking Week`

## Минимальный weekly workflow

1. Создать запись недели.
2. Занести Top 20.
3. Занести scorecards по всем 20 компаниям.
4. Привязать доказательную базу.
5. Создать публикацию.
6. Открыть окно для review requests.
7. Зафиксировать ответы и корректировки.

## Что важно для Modest Integration

Если `Modest Integration` будет использоваться как слой автоматизации, ему стоит передавать:

- ranking metadata
- company score snapshots
- publication URLs
- review intake
- response notes

## Следующий шаг

Как только будет доступен рабочий коннектор или API-вход в `Bitrix24 / Modest Integration`, эту схему можно превратить в:

- автообновление weekly ranking records;
- автоархив ответов на споры;
- автоформирование scorecards;
- автоэкспорт в публичные GitHub-публикации.
