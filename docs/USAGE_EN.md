# Usage

## Portrait Replacer

1. Close Sovereign Tower.
2. Run `portrait-replacer/START.bat`.
3. Select `sovereign_tower.pck` if it was not detected automatically.
4. Select `gdre_tools.exe` if you want to export original PNG files or use GDRE validation.
5. Click **Scan PCK**.
6. Select a portrait and a replacement PNG.
7. Choose a resize mode:
   - **Original size**: keep the replacement image size when the target resource permits it.
   - **Fit**: keep the full image and preserve its aspect ratio.
   - **Crop**: fill the target size and crop the overflow.
8. Click **Apply**.

For batch replacement, select a folder containing PNG files whose filenames match the game portrait filenames.

Use **Restore backup** to restore the backup created by the tool.

## Font Replacer

1. Close Sovereign Tower.
2. Install the optional font optimization dependency once: `pip install fonttools`.
3. Run `font-replacer/START.bat`.
4. Select `sovereign_tower.pck` if needed.
5. Select a Korean-capable TTF/OTF font.
6. Choose the target:
   - **All Korean text**
   - **Main font**
   - **Fallback font**
7. Keep **Optimize font size if needed** enabled unless you have a specific reason to disable it.
8. Click **Apply**.

On first use, Godot 4.6.2 may be downloaded automatically. The tool creates a small backup of the original Korean font data before the first replacement.
