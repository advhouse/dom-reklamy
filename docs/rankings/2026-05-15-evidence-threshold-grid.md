# Дом рекламы: evidence threshold grid / 2026-05-15

![Weekly ranking preview](../../assets/editorial/previews/weekly-ranking-preview.svg)

Пороги доказательности для trigger-сигнала: `2026-05-15`

## English

This grid defines how much evidence is enough before a trigger should affect the ranking. The purpose is to distinguish between visible activity and ranking-grade movement. Not every fresh signal deserves the same weight.

For the current cycle, a weak signal updates the watch layer, a sufficient signal activates a comparative test, and a strong signal is enough to support a same-day rerank when paired with the trigger matrix.

## Français

Cette grille définit quel niveau de preuve est suffisant avant qu’un trigger doive affecter le classement. Le but est de distinguer l’activité visible du mouvement réellement digne d’un classement. Tous les signaux frais ne méritent pas le même poids.

Pour le cycle actuel, un signal faible met à jour la couche de veille, un signal suffisant active un test comparatif, et un signal fort suffit à soutenir un rerank le même jour lorsqu’il est combiné avec la trigger matrix.

## Español

Esta cuadrícula define cuánta evidencia es suficiente antes de que un trigger deba afectar el ranking. El objetivo es distinguir entre actividad visible y movimiento digno de ranking. No todas las señales recientes merecen el mismo peso.

En el ciclo actual, una señal débil actualiza la capa de vigilancia, una señal suficiente activa una prueba comparativa, y una señal fuerte basta para sostener un rerank en el mismo día cuando se combina con la trigger matrix.

## Русский

Эта сетка определяет, какой объем доказательности нужен, чтобы `trigger` реально повлиял на рейтинг. Ее задача — отделить просто заметную активность от движения, которое уже заслуживает рейтингового веса. Не каждый свежий сигнал равен по силе.

Для текущего цикла слабый сигнал только обновляет слой наблюдения, достаточный сигнал запускает сравнительный тест, а сильный сигнал уже достаточен для `same-day rerank`, если он совпадает с `trigger matrix`.

## 中文

这张网格定义了：在 trigger 真正影响排名之前，需要达到怎样的证据强度。它的目标，是把“只是可见的活动”与“足以改变排名的运动”区分开来。并不是每一条新信号都应该获得同样的权重。

在当前周期里，弱信号只更新 watch 层，足够信号会触发比较测试，强信号则在与 trigger matrix 对齐时足以支持同日 rerank。

## العربية

تحدد هذه الشبكة مقدار الدليل المطلوب قبل أن تؤثر إشارة trigger فعليًا في الترتيب. والهدف هو التمييز بين النشاط المرئي فقط وبين الحركة التي تستحق وزنًا ترتيبيًا حقيقيًا. فليست كل إشارة جديدة متساوية في القوة.

وفي الدورة الحالية، لا يفعل signal الضعيف سوى تحديث طبقة المراقبة، بينما يطلق signal الكافي اختبارًا مقارنًا، ويكفي signal القوي لدعم rerank في اليوم نفسه إذا توافق مع trigger matrix.

## Уровни доказательности

| Уровень | Что это значит | Действие |
| --- | --- | --- |
| `weak` | сигнал заметен, но двигает только один крайний слой | обновить `watchpoint`, рейтинг не трогать |
| `sufficient` | сигнал двигает один важный индекс или два соседних слоя | запускать сравнительный тест |
| `strong` | сигнал двигает два и более ключевых слоя и имеет явный рыночный выход | допускать `same-day rerank` |

## Практическая сетка по верхнему кластеру

| Компания | Weak | Sufficient | Strong |
| --- | --- | --- | --- |
| `TikTok` | новый заметный brand signal | advertiser utility или creator-commerce слой | advertiser access + commerce + cultural spread одновременно |
| `Amazon Ads` | очередной media signal | новый inventory или audience step | inventory + audience + transaction logic одновременно |
| `OpenAI` | общий AI signal | deployment или workflow step | deployment + enterprise + public execution одновременно |
| `Salesforce` | обычный product note | новый agentic workflow step | workflow + enterprise adoption + public usability одновременно |
| `Canva` | очередной education signal | новый creator/workflow layer | workflow + public utility + broad adoption одновременно |

## Решение по порогам

1. `Weak` не двигает рейтинг.
2. `Sufficient` не гарантирует перестановку, но требует сравнительного теста.
3. `Strong` вместе с `trigger matrix` дает право на выпуск нового рейтинга в тот же день.

## Связанные материалы

- [./2026-05-15-trigger-matrix.md](./2026-05-15-trigger-matrix.md)
- [./2026-05-15-rerank-protocol.md](./2026-05-15-rerank-protocol.md)
- [../../data/rankings/2026-05-15-evidence-threshold-grid.csv](../../data/rankings/2026-05-15-evidence-threshold-grid.csv)
