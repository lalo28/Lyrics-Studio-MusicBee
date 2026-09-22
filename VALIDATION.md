# RC2E delta validation

RC2E changes only the Apple local-profile visibility/filtering, version labels, and the five bundled Apple profile settings for normal/long Word Focus. `Apple Music` is a subset; `My Profiles` is the complete local-profile list. The Apple profiles set `Apple Precision` + `Apple Sustain Bloom` while keeping full-line Appearance/Surface/Accent at `None`. `STATIC_CHECK_LOG.txt` records the current source/profile checks. Windows compilation/regression is still performed by the package before installation.

---

**Validación — Lyrics Studio 23.55.0 RC2**

Base exacta: MB_TTMLLyrics_v23.55.0_RC1_INSTALLER_FIX1.zip, SHA256
3705ff037835b73ff0d0bf9eba70abc9f97303c568f4b04aeb77a81e7f67f6a4.

El código RC1 de origen tenía SHA256 a7d04105d7f2abbe63a9badd81e3ba51787b4448968d74570c2cbb217455ad75.

**Comprobado en preparación**
- Delimitadores/literales del fuente C# y harness, y contratos estáticos del proyecto.
- Comparación con RC1 de parsers distintos de TTML, medidas de texto, wrap, progreso/timing, diseños de fábrica y arranque CPU.
- En los dos métodos centrales de karaoke, la diferencia se limita a conservar el recorte por intersección.
- Revisión de las ramas de error/cancelación y de la transacción de archivos.
- Integridad del manifiesto SHA256 y CRC del ZIP final.

STATIC_CHECK_LOG.txt contiene el resultado real del verificador de código y su hash. Estas comprobaciones no son compilación, pruebas de píxeles ni ejecución en MusicBee.

**Pruebas añadidas para ejecutar en Windows**
ReleaseRegression.cs carga la DLL x86 que acaba de compilarse y prueba los métodos de producción: perfiles en una carpeta temporal, errores/nombres duplicados, offsets, rangos y tiempos TTML, píxeles fuera del área de karaoke, además de las regresiones previas de fuentes, aislamiento, Unicode, wrap y guardado atómico.

InstallerRegression.ps1 ejecuta las funciones reales de FileOperations.ps1 y ReleaseState.ps1 sobre archivos temporales. Incluye reemplazo, restauración completa, bloqueos después de la primera operación, preservación de offsets/perfiles, fallo del recibo, backup corrupto y compatibilidad RC1.

Las pruebas de esta RC2 NO se han ejecutado aquí: no hay Windows, .NET Framework, PowerShell ni MusicBee en el entorno. El registro anterior de 134 PASS corresponde a RC1, no a estos cambios. No se reutiliza su DLL ni su resultado.

**Pendiente para aceptación**
- Compilar y ejecutar las regresiones de RC2 con 01_VALIDAR_RC2.bat.
- Completar los flujos de interfaz y reproducción de RELEASE_CHECKLIST.md.
- Registrar funcionamiento de instalación/restauración y los logs de la versión exacta.
- Verificar el fondo partido comunicado, flashes, deformaciones, fullscreen, FPS y recursos.

El paquete contiene fuentes/recursos e instalador con validación previa. No contiene una DLL precompilada ni certifica 60 FPS. Si alguna validación falla, el instalador se detiene; los errores durante una transacción disparan recuperación y conservan sus copias si algún bloqueo impide completarla.
