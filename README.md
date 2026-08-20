# Sovereign Tower Replacer

Unofficial Windows tools for **Sovereign Tower**.

[한국어 README](README_KO.md)

## Portrait Replacer 0.7.0

Replaces character portrait textures in `sovereign_tower.pck` with PNG images.

- Korean and English GUI
- Character filter and search
- Single and batch replacement
- Original PNG export through GDRE Tools
- Supports DXT5/BC3, WebP, and PNG portrait textures used by the game
- Creates a backup before modifying the game PCK

## Font Replacer 0.4.0

Replaces the Korean NotoSansKR font resources in `sovereign_tower.pck` with a selected TTF/OTF font.

- Korean and English GUI
- Main and fallback NotoSansKR targets
- Uses Godot 4.6.2 to create game-compatible `.fontdata`
- Optional font size optimization
- Creates a font backup before the first replacement

## Run

Clone or download this repository, then run `START.bat` in the tool you want to use:

- `portrait-replacer/START.bat`
- `font-replacer/START.bat`

The GUI detects Korean or English from the system locale. `START_KO.bat` and `START_EN.bat` can be used to force a language.

For optional font size optimization, install fontTools once:

```text
pip install fonttools
```

## Usage

- [English guide](docs/USAGE_EN.md)
- [한국어 사용법](docs/USAGE_KO.md)

## Requirements

- Windows
- Python 3 with Tkinter
- GDRE Tools for original portrait export and optional PCK validation
- Microsoft DirectXTex / texconv may be installed automatically when DXT5 encoding is required
- Godot Engine 4.6.2 may be downloaded automatically when required

The tested Python runtime payload for each tool is stored under its `.payload/` directory and loaded by the corresponding launcher script.

No game assets are included in this repository.

## Disclaimer

This project is unofficial and is not affiliated with the developer or publisher of Sovereign Tower. Game updates may change resource paths or formats.
