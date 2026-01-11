# Project Context

## Overview
This repository contains dotfiles managed with GNU Stow.

## Structure
Each subdirectory represents a "package" that can be symlinked to the appropriate location (typically `$HOME`) using GNU Stow.

## Usage
To install a package:
```bash
stow <package-name>
```

To uninstall a package:
```bash
stow -D <package-name>
```

## Git Configuration
This repository uses a **whitelist approach** in `.gitignore`:
- All files are ignored by default (`*`)
- Only explicitly whitelisted files can be committed
- To add a new file to the repository, you MUST add it to the whitelist in `.gitignore` using `!<path>`
