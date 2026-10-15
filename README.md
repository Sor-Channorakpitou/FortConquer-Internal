# FortConquer — Internal Dev

Reverse-engineering and modding workspace for **FortConquer** (by DroidHen).  
This repo contains the decoded APK source for study and modification purposes.

## Project Structure

```
decoded/          # APKTool-decoded APK source
  AndroidManifest.xml
  apktool.yml
  assets/
    font/         # Game fonts
    gfx/          # Sprite sheets, UI textures, backgrounds
    mfx/          # Sound effects and music (OGG)
  res/            # Android resources (layouts, strings, colors)
  smali/          # Decompiled Dalvik bytecode
  unknown/        # Bundled web assets / JS
unit/             # Extracted unit sprite sheets (PNG + plist)
```

## Tools Used

| Tool | Purpose |
|------|---------|
| [APKTool](https://apktool.org/) | Decode / rebuild the APK |
| [JADX](https://github.com/skylot/jadx) | Java decompilation for reference |

## Workflow

### Decode
```bash
apktool d FortConquer.apk -o decoded
```

### Rebuild
```bash
apktool b decoded -o FortConquer-unsigned.apk
```

### Sign
```bash
# Use your own keystore
apksigner sign --ks my.keystore --out FortConquer-signed.apk FortConquer-unsigned.apk
```

## Notes

- Built APKs, keystores, and local tool binaries (`jre/`, `jadx-gui`, `apktool.jar`) are excluded from version control via `.gitignore`.
- Smali files are the primary target for gameplay modifications.
