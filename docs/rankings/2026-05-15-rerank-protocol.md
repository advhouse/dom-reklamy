# Дом рекламы: rerank protocol / 2026-05-15

![Weekly ranking preview](../../assets/editorial/previews/weekly-ranking-preview.svg)

Протокол запуска нового рейтингового прохода: `2026-05-15`

## English

This protocol defines what happens after a trigger appears. The purpose is to keep the next ranking pass fast, consistent, and defensible. A strong signal should not sit in the repository without a clear action path.

The next rerank should begin only when the trigger matrix is satisfied. Once that happens, the task is not to reopen the whole market from zero. The task is to test whether the trigger is strong enough to change the relative order of the upper cluster or the hold layer.

## Français

Ce protocole définit ce qui se passe après l’apparition d’un trigger. Le but est de maintenir le prochain passage de classement rapide, cohérent et défendable. Un signal fort ne doit pas rester dans le dépôt sans chemin d’action clair.

Le prochain reclassement ne doit commencer que lorsque la trigger matrix est satisfaite. Une fois cela arrivé, il ne s’agit pas de rouvrir tout le marché à partir de zéro. Il s’agit de tester si le trigger est assez fort pour modifier l’ordre relatif du groupe supérieur ou de la couche de maintien.

## Español

Este protocolo define qué ocurre después de que aparece un trigger. El objetivo es mantener la siguiente pasada del ranking rápida, coherente y defendible. Una señal fuerte no debe quedarse en el repositorio sin una ruta de acción clara.

El siguiente rerank solo debe comenzar cuando se cumpla la trigger matrix. Una vez que eso ocurra, la tarea no es reabrir todo el mercado desde cero. La tarea es comprobar si el trigger es lo bastante fuerte como para cambiar el orden relativo del grupo superior o de la capa de sostén.

## Русский

Этот протокол определяет, что происходит после появления `trigger`-сигнала. Его задача — сделать следующий рейтинговый проход быстрым, последовательным и защищаемым. Сильный сигнал не должен оставаться в репозитории без понятного пути действия.

Следующий `rerank` должен запускаться только тогда, когда выполнены условия `trigger matrix`. После этого задача не в том, чтобы заново открывать весь рынок. Задача в том, чтобы проверить, достаточно ли силен `trigger`, чтобы изменить относительный порядок верхнего кластера или слоя удержания.

## 中文

这份协议定义了 trigger 出现之后该怎么做。它的目标，是让下一次排名重排保持快速、一致并且可辩护。强信号不应停留在仓库里而没有明确的行动路径。

下一次 rerank 只有在 trigger matrix 被满足后才应启动。一旦条件满足，任务就不是把整个市场从零重新打开，而是测试这个 trigger 是否已经强到足以改变上层簇或守位层的相对顺序。

## العربية

يحدد هذا البروتوكول ما الذي يحدث بعد ظهور إشارة trigger. والهدف هو أن يكون المرور التالي على الترتيب سريعًا ومتسقًا وقابلًا للدفاع عنه. فلا ينبغي أن تبقى الإشارة القوية في المستودع من دون مسار عمل واضح.

ولا ينبغي أن يبدأ rerank التالي إلا عندما تتحقق شروط trigger matrix. وبعد ذلك لا تكون المهمة إعادة فتح السوق كله من الصفر، بل اختبار ما إذا كانت الإشارة قوية بما يكفي لتغيير الترتيب النسبي للكتلة العليا أو طبقة التثبيت.

## Порядок запуска

1. Подтвердить, что новый публичный сигнал соответствует `trigger matrix`.
2. Проверить, затрагивает ли он один индекс или сразу несколько.
3. Сравнить новую силу сигнала с текущим верхним кластером и слоем удержания.
4. Если перестановка оправдана, обновить `Top 20`, короткий `Top 5` и краткий разбор движения.
5. Если перестановка не оправдана, зафиксировать сигнал в `watchpoint scan` и сохранить режим наблюдения.

## Когда выпускать новый Top 20

- когда trigger подтвержден у двух компаний из верхнего кластера;
- когда один trigger настолько силен, что меняет относительный порядок внутри верхней пятерки;
- когда новый сигнал одновременно двигает `platform attention`, `workflow adoption` и `market execution`.

## Когда не выпускать новый Top 20

- когда сигнал повторяет уже известную линию без нового веса;
- когда изменение касается только тональности, а не реальной рыночной силы;
- когда сигнал заметный, но недостаточный для перестановки в верхнем кластере.

## Минимальный пакет после rerank

- обновленный `Top 20`;
- короткий `movement note`;
- обновленная таблица scorecards;
- точечное пояснение, какой trigger сработал;
- обновленная ссылка из текущего `watchpoint`-слоя.

## Связанные материалы

- [./2026-05-15-movement-note-scaffold.md](./2026-05-15-movement-note-scaffold.md)
- [./2026-05-15-candidate-order-brief.md](./2026-05-15-candidate-order-brief.md)
- [./2026-05-15-trigger-matrix.md](./2026-05-15-trigger-matrix.md)
- [../../data/rankings/2026-05-15-rerank-protocol.csv](../../data/rankings/2026-05-15-rerank-protocol.csv)
- [../../data/rankings/2026-05-15-sources.md](../../data/rankings/2026-05-15-sources.md)
