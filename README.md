# Lyrics Studio for MusicBee

Lyrics Studio is a Windows/MusicBee lyrics-view plugin focused on synchronized TTML/ELRC/LRC playback, word-level karaoke, configurable profiles, adaptive backgrounds, fullscreen/projection output, and a CPU-safe renderer baseline.

## Current release candidate

**23.55.0 RC2E — Apple Auto Focus + Contrast**

This repository is currently tracking a **release candidate**, not a final stable release. RC2E preserves the RC2 persistence/recovery work and the Apple Music profile family, and adds automatic Apple Word Focus behavior plus contrast calibration.

Key RC2E behavior:

- Apple profiles automatically use `Apple Precision` for Word Focus.
- Long sustained words use `Apple Sustain Bloom`.
- Apple Active Line Appearance / Surface / Accent remain `None`.
- Context contrast was recalibrated so surrounding lines do not become nearly black on dark backgrounds.
- TTML parser timing, V21 Exact text pipeline, Factory 10 and the baseline renderer are intentionally preserved.

See [`RELEASE_NOTES.md`](RELEASE_NOTES.md), [`VALIDATION.md`](VALIDATION.md) and [`RELEASE_CHECKLIST.md`](RELEASE_CHECKLIST.md) for the exact release scope and acceptance status.

## Repository layout

```text
src/                     Main MusicBee plugin source
profiles/AppleMusic/     Bundled Apple Music profiles
assets/                   Embedded/runtime visual assets
scripts/                  Build, install and restore PowerShell logic
tests/                    Static, installer and regression tests
sample/                   TTML/ELRC regression samples
.github/workflows/        GitHub Actions Windows validation
```

## Build and validate on Windows

Requirements:

- Windows
- MusicBee installed for runtime testing
- .NET Framework 4.x compiler (`csc.exe`)
- PowerShell
- Python 3 for the portable source checks

Run:

```bat
01_VALIDAR_RC2E_APPLE.bat
```

or build directly:

```bat
BUILD.bat
```

The build path verifies `SHA256SUMS.txt`, executes installer regression tests, compiles the x86 plugin, compiles/runs the C# regression harness, and writes the DLL to `dist/MB_TTMLLyrics.dll` only after the checks pass.

## Install / restore

Close MusicBee before installation or restoration.

```bat
00_INSTALAR_RC2E_APPLE.bat
```

To restore the previous plugin/settings snapshot:

```bat
02_RESTAURAR_ANTERIOR.bat
```

Read [`LEEME_RC2E.md`](LEEME_RC2E.md) before treating this candidate as stable.

## Safety and renderer policy

The project keeps the compatible CPU/Classic path as the safe baseline. Optional visual acceleration must not prevent MusicBee or Lyrics Studio from starting, and visual experimentation should not alter protected TTML timing or the V21 Exact text identity without an explicit release scope.

## Validation status

Portable static validation currently checks source contracts and package integrity. Full acceptance still requires Windows compilation, installer regression, MusicBee playback, fullscreen/projection checks, visual review and FPS testing. Passing CI is therefore necessary but not sufficient for a stable release.

## License

No open-source license has been selected for this repository yet. Until a license is explicitly added, the source is **not automatically granted an open-source reuse license**.
