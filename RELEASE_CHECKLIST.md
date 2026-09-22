**Aceptación de RC2 en Windows y MusicBee — Pendiente**

Registra fecha, MusicBee, Windows, escala, resolución y nombre de carpeta del paquete junto con el log. Marca cada punto solo después de comprobarlo en esa versión.

- [ ] 01_VALIDAR_RC2.bat termina correctamente: manifiesto, pruebas PowerShell, compilación x86 y regresiones C#.
- [ ] Instalar sobre RC1 deja un backup completo con DLL, INI, offsets y perfiles existentes; aparece RC installed.
- [ ] Restaurar desde RC2 devuelve una instalación coherente y conserva perfiles nuevos.
- [ ] El diseñador mantiene el borrador después de cancelar Guardar como, cancelar Restaurar o fallar al escribir.
- [ ] Guardar, editar de nuevo y cerrar pregunta por los cambios. Fallar/cancelar el guardado desde ese aviso mantiene la ventana abierta.
- [ ] Guardar como, duplicar y renombrar no sobrescriben otro perfil sin confirmación ni aceptan nombres reservados.
- [ ] Importar desde Descargas, reiniciar y retirar el JSON externo conserva el perfil local y sus valores.
- [ ] Los offsets de varias canciones, incluidas rutas Unicode, persisten tras reiniciar; cero elimina el ajuste de esa canción.
- [ ] Cambiar zoom/perfil y cerrar inmediatamente conserva el último cambio solicitado. Entrar temporalmente en modo seguro no lo guarda por el mero cierre.
- [ ] Abrir/cerrar proyección repetidamente y cambiar de pista durante la carga nunca deja letras antiguas ni una carga perdida.
- [ ] TTML, ELRC, LRC, TXT e instrumental funcionan; la muestra RELEASE_TTML_TRIM.ttml respeta los límites de cada palabra.
- [ ] Letras largas, caracteres combinados y palabras repartidas en renglones no se deforman ni se superponen; clic/seek coincide con lo visible.
- [ ] Panel estrecho, zoom, resize y fullscreen conservan los márgenes con glow/feather y transiciones.
- [ ] El fondo partido y los flashes/rectángulos de las capturas previas se comprueban directamente; registrar si persisten.
- [ ] Cambiar entre los diez perfiles reemplaza el estado visual completo; Studio Lite inicia ligero.
- [ ] Roboto/Segoe y fallback funcionan; no se reactiva ninguna fuente Spotify/Circular.
- [ ] Comprobar escalas Windows 100, 125, 150 y 200 %, panel y fullscreen.
- [ ] Registrar FPS/tiempos con y sin HUD y memoria/handles durante reproducción prolongada, cambios de pista y aperturas de ventanas.

Los fallos de compositor, recursos o rendimiento que aparezcan en estas comprobaciones requieren un log/captura de RC2. Las nuevas pruebas de recorte no equivalen a certificar toda la salida visual.
