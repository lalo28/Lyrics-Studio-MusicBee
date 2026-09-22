# Lyrics Studio 23.55.0 RC2E — Apple Auto Focus + Contrast

Esta release conserva RC2D (Persistence/Recovery + Apple Motion + sección Apple Music) y corrige dos cosas de la familia Apple:

1. **Word Focus automático por perfil**: al elegir cualquiera de los cinco perfiles Apple se fuerzan `Apple Precision` y `Apple Sustain Bloom`; el usuario no tiene que activarlos manualmente después de cambiar de perfil.
2. **Apple Contrast Fix**: el contexto ya no cae a opacidades tan oscuras. La profundidad de `Depth Focus`/`YouLy Depth` se apoya más en blur y menos en apagar la letra.

La línea completa sigue con `Appearance/Surface/Accent = None`; no se reactivan cápsulas de línea.

## Prueba rápida
1. Cierra MusicBee.
2. Ejecuta `01_VALIDAR_RC2E_APPLE.bat`.
3. Ejecuta `00_INSTALAR_RC2E_APPLE.bat`.
4. Abre MusicBee → Profile → Apple Music.
5. Selecciona `Apple · Original Clean` y luego `Apple · YouLy Depth`.
6. Con una TTML/ELRC word-by-word, confirma que Word Focus y Long Word Focus aparecen sin tocarlos manualmente.
