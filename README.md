# Sovereign Tower Replacer

<p align="center">
  <img src="docs/images/examples/Victoria.jpg" alt="Victoria example" width="420">
</p>

Anime / subculture-style replacement tools and example assets for **Sovereign Tower**.

This project replaces character portraits and Korean fonts for *Sovereign Tower*. For portrait mods, use the **`REPLACE/`** folder as the batch-replacement source directory in Portrait Replacer. The Victoria image above is the primary style reference. The replacement set is still expanding over time.

## Included tools

### Portrait Replacer 0.7.0
- Korean and English GUI
- Character filter and search
- Single and batch replacement
- Original PNG export through GDRE Tools
- Supports DXT5/BC3, WebP, and PNG portrait textures used by the game
- Preserves the original PCK layout when applying portrait replacements
- Creates a backup before modifying the game PCK

### Font Replacer 0.4.0
- Korean and English GUI
- Replaces the Korean NotoSansKR resources in `sovereign_tower.pck`
- Uses Godot 4.6.2 to generate compatible `.fontdata`
- Supports backup and restore

## Run
Clone or download this repository, then run the launcher for the tool you want to use:

- `portrait-replacer/START.bat`
- `font-replacer/START.bat`

`START_KO.bat` and `START_EN.bat` can be used to force the interface language.

## Example image
The Victoria image shown at the top is the primary style reference.

## REPLACE folder
Use **`REPLACE/`** as the source directory for Portrait Replacer batch replacement. The current character / expression coverage is listed below and will continue to expand.

### Current replacement list
- **Academician** — smiling, stoical
- **Agrand** — proud, sad, serious
- **Alwena** — worried
- **Angelica** — armored, cat, embarrassed, from behind, possessed, sad, smiling, surprised
- **Ari** — armored, curious, possessed, serious, smiling
- **Aristocrat** — disgusted, surprised
- **Arlin** — angry, calm, checking notes, cook overlay, crying, distraught, embarrassed, frightened, from behind, objecting, objecting arm, sad, smiling, surprised
- **Blacksmith** — blushing, blushing dress, blushing hammerless, disgusted, disgusted hammerless, serious, serious hammerless, sideeye, sideeye dress, sideeye hammerless, smiling, smiling dress, smiling hammerless
- **Brunhilda** — angry, armored, blushing, blushing second, from behind, pleading, possessed, sad, sarcastic, serious, sigh, smiling, surprised
- **Dragon Knight** — serious, threatening, young, young embarrassed
- **Farmer** — serious, worried
- **Gendan** — humble calm, humble worried embarrassed
- **Gideon** — angry, armored, blushing, blushing smiling, blushing sweaty, disgusted, melodramatic element 1, melodramatic element 2, possessed, serious, sigh, smiling, surprised, sweaty
- **Gwendan** — angry, disgusted, from behind, humble blushing, humble blushing smiling, humble from behind, humble possessed, humble smiling, humble surprised, humbled disgusted, possessed, smiling
- **Intendant Knight** — armored, serious
- **Intendante** — angry, serious, shouting, whispering
- **Kingslayer** — armor crumbling, intro, serious
- **Lady Tower** — blush, human blushing, human blushing smiling, human neutral, human sad, sad, serious, smiling
- **Ligia** — blushing, embarrassed, flirty, knight armored, knight embarrassed, knight flirty side eyes, knight serious, knight smiling, knight surprised curious, knight worried, possessed, serious, smiling, surprised curious, worried
- **Oliver** — armored, base possessed, embarrassed, mage armored, mage blushing, mage embarrassed, mage from behind, mage smoking, mage smiling, mage stoical, mage surprised worried, possessed, smiling, smoke, stoical, surprised worried
- **Rowan** — blush, calm, embarrassed, sideeye, smile
- **Rupin** — angry, worried, worried neutral, worried smile
- **Shadow** — default
- **Ursule** — armored, blushing, blushing side eye, corruption low neutral, from behind, high corruption armored, high corruption blushing side eye, low corruption armored, low corruption blushing, low corruption sigh, low corruption smiling, mid corruption armored, mid corruption blushing, mid corruption sigh, mid corruption smiling, neutral, sigh, smiling
- **Victoria** — armored, cringing, demonic, devilish, disgusted, from behind, sadistic, smiling, terrifying
- **Witch Belladonna** — angry, blushing, curious, flirty, serious, smiling, worried
- **Worker** — smiling, worried

## Usage
- [English guide](docs/USAGE_EN.md)
- [한국어 설명서](README_KO.md)
- [한국어 사용법](docs/USAGE_KO.md)

## Notes
- No original game assets are included.
- The replacement set is a work in progress and coverage will continue to expand.
- This project is unofficial and is not affiliated with the developer or publisher of *Sovereign Tower*.

## License
This project is distributed under **CC BY-NC 4.0**. Commercial use is prohibited and attribution is required.
