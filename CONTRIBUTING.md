# Contributing

Lyrics Studio is still in release-candidate stabilization. Changes should be narrowly scoped and must preserve protected behavior unless the release explicitly says otherwise.

Before proposing a change:

1. Run `python tests/validate_source.py`.
2. On Windows, run `BUILD.bat` or `scripts/Release.ps1 -Mode Build`.
3. Do not bypass `SHA256SUMS.txt` validation for release-package files.
4. Keep TTML timing, protected parser behavior and the V21 Exact text path unchanged unless the change is specifically about those systems.
5. For rendering/UI changes, include a reproducible MusicBee test case and before/after evidence.

Do not commit local MusicBee settings, backups, logs, compiled DLLs, personal lyric files, credentials or tokens.
