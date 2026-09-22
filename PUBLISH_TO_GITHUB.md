# Publicar este repositorio en GitHub

Nombre recomendado: `Lyrics-Studio-MusicBee`

Descripción recomendada:

> Advanced synchronized lyrics viewer for MusicBee with TTML/ELRC/LRC, word-level karaoke, profiles, adaptive visuals and fullscreen output.

## Opción segura: empezar privado

Desde esta carpeta, con GitHub CLI instalado:

```bat
git init -b main
git config core.autocrlf false
git add .
git commit -m "Lyrics Studio 23.55.0 RC2E repository baseline"
gh auth login
gh repo create Lyrics-Studio-MusicBee --private --source=. --remote=origin --push
```

Después de completar las pruebas de aceptación puedes cambiar la visibilidad desde GitHub si quieres hacerlo público.

## Primer release recomendado

No etiquetar RC2E como `latest stable`. Si se publica como prerelease, usa por ejemplo:

```text
v23.55.0-rc2e
```

Adjunta el ZIP de release exacto y conserva `SHA256SUMS.txt`.

## Topics sugeridos

`musicbee`, `lyrics`, `ttml`, `lrc`, `elrc`, `karaoke`, `windows`, `music-player`, `synced-lyrics`
