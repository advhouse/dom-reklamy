# Дом рекламы: scorecard refresh scaffold / 2026-05-15

![Weekly ranking preview](../../assets/editorial/previews/weekly-ranking-preview.svg)

Каркас обновления scorecards после rerank: `2026-05-15`

## English

This scaffold defines the minimum refresh layer for scorecards after a confirmed rerank. Its purpose is to keep the internal evidence base synchronized with the public publication layer. A same-day ranking move should not leave the working tables behind.

## Français

Ce modèle définit la couche minimale de mise à jour des scorecards après un rerank confirmé. Son but est de garder la base de preuve interne synchronisée avec la couche de publication publique. Un mouvement de classement le jour même ne doit pas laisser les tableaux de travail en retard.

## Español

Esta plantilla define la capa mínima de actualización de scorecards después de un rerank confirmado. Su objetivo es mantener la base interna de evidencia sincronizada con la capa pública de publicación. Un movimiento de ranking en el mismo día no debe dejar atrás las tablas de trabajo.

## Русский

Этот каркас задает минимальный слой обновления `scorecards` после подтвержденного `rerank`. Его задача — держать внутреннюю доказательную базу синхронизированной с публичным публикационным слоем. Перестановка в тот же день не должна оставлять рабочие таблицы позади.

## 中文

这个脚手架定义了在确认 rerank 之后，scorecards 需要如何做最小更新。它的目标，是让内部证据层与公开发布层保持同步。同日排名移动不应让工作表落后。

## العربية

يحدد هذا الهيكل الحد الأدنى المطلوب لتحديث scorecards بعد rerank مؤكد. وغايته إبقاء قاعدة الأدلة الداخلية متزامنة مع طبقة النشر العلنية. فلا ينبغي أن تترك الحركة الترتيبية في اليوم نفسه جداول العمل متأخرة.

## Обязательные поля

- `company`
- `previous composite state`
- `new composite state`
- `trigger source`
- `affected index`
- `confidence level`
- `editor note`

## Рабочий каркас

| Company | Previous composite state | New composite state | Trigger source | Affected index | Confidence level | Editor note |
| --- | --- | --- | --- | --- | --- | --- |
| `Company` | `state` | `state` | `source link or trigger label` | `index` | `medium / high` | `one-line note` |

## Когда использовать

1. После подтвержденного `rerank`.
2. Когда меняется хотя бы один индексный слой.
3. Когда публичная перестановка должна быть синхронизирована с рабочими таблицами.

## Когда не использовать

1. Пока trigger еще не подтвержден.
2. Пока нет финального решения о перестановке.
3. Когда обновлен только watchpoint-слой без рейтингового движения.

## Связанные материалы

- [./2026-05-15-rerank-protocol.md](./2026-05-15-rerank-protocol.md)
- [./2026-05-15-rerank-delta-scaffold.md](./2026-05-15-rerank-delta-scaffold.md)
- [../../data/rankings/2026-05-15-scorecard-refresh-scaffold.csv](../../data/rankings/2026-05-15-scorecard-refresh-scaffold.csv)
