# Дом рекламы: rerank delta scaffold / 2026-05-15

![Weekly ranking preview](../../assets/editorial/previews/weekly-ranking-preview.svg)

Каркас сравнения рейтинга до и после перестановки: `2026-05-15`

## English

This scaffold defines the minimum comparison layer after a rerank. Its purpose is to show what changed, not just to announce that something changed. A same-day rerank becomes much easier to defend when the before-and-after logic is explicit.

## Français

Ce modèle définit la couche minimale de comparaison après un rerank. Son but est de montrer ce qui a changé, et non simplement d’annoncer qu’un changement a eu lieu. Un rerank le jour même devient beaucoup plus facile à défendre lorsque la logique avant/après est explicite.

## Español

Esta plantilla define la capa mínima de comparación después de un rerank. Su objetivo es mostrar qué cambió, y no solo anunciar que hubo un cambio. Un rerank en el mismo día resulta mucho más defendible cuando la lógica antes/después es explícita.

## Русский

Этот каркас задает минимальный слой сравнения после `rerank`. Его задача — показывать, что именно изменилось, а не просто сообщать, что перестановка произошла. `Same-day rerank` гораздо проще защищать, когда логика “до / после” зафиксирована явно.

## 中文

这个脚手架定义了 rerank 之后最小的比较层。它的目的，是展示“究竟改变了什么”，而不只是宣布“发生了变化”。当前后逻辑被明确记录时，同日 rerank 会更容易被辩护。

## العربية

يحدد هذا الهيكل الحد الأدنى من طبقة المقارنة بعد rerank. وغايته إظهار ما الذي تغيّر فعلاً، لا مجرد الإعلان عن حدوث تغيير. ويصبح rerank في اليوم نفسه أسهل كثيرًا في الدفاع عنه عندما يكون منطق قبل/بعد واضحًا وصريحًا.

## Обязательные поля

- `company`
- `previous rank`
- `new rank`
- `direction`
- `trigger`
- `primary index change`
- `why the move is defensible`

## Рабочий каркас

| Company | Previous rank | New rank | Direction | Trigger | Primary index change | Why the move is defensible |
| --- | --- | --- | --- | --- | --- | --- |
| `Company` | `N` | `N` | `up / down / hold` | `signal type` | `index` | `one-line explanation` |

## Когда использовать

1. После подтвержденного `rerank`.
2. Когда нужно быстро объяснить конкретную перестановку.
3. Когда важна прозрачность между прошлой и новой версией `Top 20`.

## Когда не использовать

1. Пока trigger еще не подтвержден.
2. Пока нет новой версии `Top 20`.
3. Когда есть только watchpoint-обновление, а не реальная перестановка.

## Связанные материалы

- [./2026-05-15-rerank-protocol.md](./2026-05-15-rerank-protocol.md)
- [./2026-05-15-movement-note-scaffold.md](./2026-05-15-movement-note-scaffold.md)
- [../../data/rankings/2026-05-15-rerank-delta-scaffold.csv](../../data/rankings/2026-05-15-rerank-delta-scaffold.csv)
