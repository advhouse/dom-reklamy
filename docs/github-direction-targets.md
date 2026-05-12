# GitHub: направления для подписки

Этот документ нужен для практической работы между рейтингами, индексами и публикациями.

Здесь собраны три рабочих направления, по которым `Дом рекламы` должен расширять внешний круг на GitHub:

- `Дизайн`
- `PR`
- `Digital`

Важно: на `12 мая 2026 года` у текущего токена `advhouse` не хватает прав для реального действия `follow` и `star`. GitHub возвращает `403 Resource not accessible by personal access token`. Это значит, что карта целей уже собрана, сценарий запуска готов, но сам слой подписок требует обновления прав токена.

## Как читать эту карту

- `Следить за аккаунтом` — подписка на организацию или публичный GitHub-узел.
- `Отмечать репозиторий` — сильный репозиторий, который стоит добавить в наш внешний круг.
- `Основной` — брать в первую очередь.
- `Дополнительный` — расширять после ядра.

## 1. Дизайн

Это самый сильный и самый естественный для GitHub слой. Здесь много живых design-system, component libraries, plugin SDK и открытых интерфейсных инструментов.

### Следить за аккаунтами

`Основной`

1. [adobe](https://github.com/adobe)
2. [figma](https://github.com/figma)
3. [Canva](https://github.com/Canva)
4. [mui](https://github.com/mui)
5. [primer](https://github.com/primer)

`Дополнительный`

6. [canva-public](https://github.com/canva-public)
7. [canva-sdks](https://github.com/canva-sdks)
8. [IBM](https://github.com/IBM)
9. [Shopify](https://github.com/Shopify)
10. [google](https://github.com/google)

### Отмечать репозитории

1. [adobe/react-spectrum](https://github.com/adobe/react-spectrum)
2. [adobe/spectrum-css](https://github.com/adobe/spectrum-css)
3. [figma/plugin-samples](https://github.com/figma/plugin-samples)
4. [figma/code-connect](https://github.com/figma/code-connect)
5. [figma/community-resources](https://github.com/figma/community-resources)
6. [mui/material-ui](https://github.com/mui/material-ui)
7. [IBM/plex](https://github.com/IBM/plex)
8. [primer/react](https://github.com/primer/react)
9. [Shopify/react-native-skia](https://github.com/Shopify/react-native-skia)
10. [google/material-design-icons](https://github.com/google/material-design-icons)

## 2. PR

Классические PR-сети редко используют GitHub как настоящую публичную рабочую площадку. Поэтому здесь нельзя слепо идти за громкими названиями из индустрии.

В PR-направлении мы берем не “любой известный бренд”, а те компании и платформы, через которые реально видны:

- публичные коммуникации;
- community-слой;
- content-tech;
- developer relations;
- открытая инфраструктура взаимодействия.

### Следить за аккаунтами

`Основной`

1. [reddit](https://github.com/reddit)
2. [linkedin](https://github.com/linkedin)
3. [mediamonks](https://github.com/mediamonks)
4. [HubSpot](https://github.com/HubSpot)
5. [salesforce](https://github.com/salesforce)

`Дополнительный`

6. [Automattic](https://github.com/automattic)
7. [spotify](https://github.com/spotify)

### Отмечать репозитории

1. [reddit/devvit](https://github.com/reddit/devvit)
2. [reddit/redditsans](https://github.com/reddit/redditsans)
3. [linkedin/rest.li](https://github.com/linkedin/rest.li)
4. [datahub-project/datahub](https://github.com/datahub-project/datahub)
5. [HubSpot/HubSpot-public-api-spec-collection](https://github.com/HubSpot/HubSpot-public-api-spec-collection)
6. [HubSpot/slack-client](https://github.com/HubSpot/slack-client)
7. [Automattic/jetpack](https://github.com/Automattic/jetpack)
8. [spotify/basic-pitch](https://github.com/spotify/basic-pitch)
9. [salesforce/LAVIS](https://github.com/salesforce/LAVIS)
10. [mediamonks/muban](https://github.com/mediamonks/muban)

## 3. Digital

Это самый широкий и самый быстро двигающийся слой. Здесь важны:

- платформа;
- инфраструктура;
- commerce;
- AI;
- developer tooling;
- product delivery.

### Следить за аккаунтами

`Основной`

1. [vercel](https://github.com/vercel)
2. [cloudflare](https://github.com/cloudflare)
3. [microsoft](https://github.com/microsoft)
4. [google](https://github.com/google)
5. [aws](https://github.com/aws)

`Дополнительный`

6. [Shopify](https://github.com/Shopify)
7. [openai](https://github.com/openai)
8. [github](https://github.com/github)
9. [salesforce](https://github.com/salesforce)
10. [figma](https://github.com/figma)

### Отмечать репозитории

1. [vercel/next.js](https://github.com/vercel/next.js)
2. [vercel/ai](https://github.com/vercel/ai)
3. [cloudflare/pingora](https://github.com/cloudflare/pingora)
4. [cloudflare/cloudflared](https://github.com/cloudflare/cloudflared)
5. [Shopify/liquid](https://github.com/Shopify/liquid)
6. [Shopify/hydrogen](https://github.com/Shopify/hydrogen)
7. [microsoft/TypeScript](https://github.com/microsoft/TypeScript)
8. [aws/aws-cdk](https://github.com/aws/aws-cdk)
9. [google/zx](https://github.com/google/zx)
10. [openai/openai-cookbook](https://github.com/openai/openai-cookbook)

## Порядок работы

Правильный порядок такой:

1. Сначала `design`.
2. Потом `pr`.
3. Потом `digital`.
4. Потом комбинированный проход по всем трем направлениям.

Так мы не создаем шум и не размазываем внимание.

## Как запускать

Готовый сценарий лежит здесь:

- [scripts/github-follow-and-star.ps1](../scripts/github-follow-and-star.ps1)

Проверка списков без действия:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave design -ListOnly
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave pr -ListOnly
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave digital -ListOnly
```

Боевой запуск после обновления прав токена:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave design
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave pr
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave digital
powershell -NoProfile -ExecutionPolicy Bypass -File scripts\github-follow-and-star.ps1 -Wave all-directions
```
