# Sovereign Tower Modding Tools

Unofficial Windows tools for **Sovereign Tower**.

## Tools

### Portrait Replacer 0.7.0

Replaces character portrait textures in `sovereign_tower.pck` with PNG images.

- Korean and English GUI
- Character filter and search
- Single and batch replacement
- Original PNG export through GDRE Tools
- Supports the portrait CTEX storage types currently found in the game: DXT5/BC3, WebP, and PNG
- Preserves the original PCK layout when applying portrait replacements
- Creates a backup before modifying the game PCK

### Font Replacer 0.4.0

Replaces the Korean NotoSansKR font resources in `sovereign_tower.pck` with a selected TTF/OTF font.

- Korean and English GUI
- Targets the main and fallback NotoSansKR resources
- Uses Godot 4.6.2 to create game-compatible `.fontdata`
- Can reduce a large font when required
- Creates a font backup before the first replacement

## Downloads

Ready-to-run packages are in [`dist/`](dist/):

- `SovereignTower_Portrait_Replacer_v0.7.0.zip`
- `SovereignTower_Font_Replacer_v0.4.0.zip`

Extract a ZIP and run `START.bat`. The GUI selects Korean or English from the system locale. You can also switch languages from the top-right language menu.

`START_KO.bat` and `START_EN.bat` force a language at startup.

## Usage

- [English guide](docs/USAGE_EN.md)
- [한국어 사용법](docs/USAGE_KO.md)

## Requirements

- Windows
- Python 3 with Tkinter
- GDRE Tools for original portrait export and optional PCK validation
- Microsoft DirectXTex / texconv may be installed automatically when a DXT5 portrait needs encoding
- Godot Engine 4.6.2 may be downloaded automatically when required

The font package includes `fontTools` for optional font subsetting. See [`third_party/fontTools-LICENSE.txt`](third_party/fontTools-LICENSE.txt).

No game assets are included in this repository.

## Disclaimer

This project is unofficial and is not affiliated with the developer or publisher of Sovereign Tower. Game updates may change resource paths or formats.
