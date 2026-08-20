# convite-bia

Convite digital da formatura em Medicina da **Dra. Ana Beatriz Vedana** — Porto Velho / RO, 07 a 12 de dezembro de 2026.

Página única, mobile-first. Fotos (WebP) e fontes (Fraunces, DM Sans, DM Mono — subsetadas só com os glifos usados) estão embutidas em base64 dentro do `index.html`. Sem build, sem dependência externa, sem CDN: o arquivo abre sozinho, inclusive offline.

## Estrutura

```
index.html      a página inteira (~460 KB)
og.jpg          preview de compartilhamento (WhatsApp, Instagram, X) — 1200×630
vercel.json     headers e cache
.vercelignore   mantém as fotos originais fora do deploy
fotos/          JPGs originais do ensaio, para futuras edições
```

## Como editar

Tudo mora no `index.html`.

| O quê | Onde |
|---|---|
| Link de compra | `var LINK_CONVITES` no `<script>` do fim do arquivo |
| Datas, locais e horários | bloco `<!-- AGENDA -->` |
| Carta | bloco da `<div class="letter">` |
| Perguntas frequentes | bloco `<!-- AVISOS -->` |
| Cores, tipografia, espaçamentos | `:root` no topo do `<style>` |
| Data-alvo da contagem regressiva | `var ALVO` no `<script>` |

As fotos são variáveis CSS (`--ph-830`, `--ph-858`, `--ph-982`) no `<style id="fotos">`. Para trocar uma foto, gere um WebP de ~1560×2340 e substitua o data URI correspondente.

## Deploy

Site estático no Vercel — sem framework, sem build.

1. Importe o repositório em vercel.com
2. Framework Preset: **Other**
3. Build Command e Output Directory: deixe em branco

Se o domínio final for diferente de `dra.anabeatrizvedana.com.br`, atualize as tags `og:url`, `og:image`, `twitter:image` e `<link rel="canonical">` no `<head>` — são elas que fazem o preview aparecer no WhatsApp.
