# Dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Contents

This repository contains configurations for:

- **alacritty** - Terminal emulator configuration
- **compton** - Compositor configuration
- **conky** - System monitor configuration
- **git** - Git global configuration
- **nitrogen** - Wallpaper manager configuration
- **nvim** - Neovim editor configuration
- **openbox** - Openbox window manager configuration
- **rofi** - Application launcher configuration (Ayu dark theme)
- **shell** - Shell scripts and aliases
- **ssh** - SSH client configuration
- **terminator** - Terminator terminal emulator
- **tint2** - Panel/taskbar configuration
- **tmux** - Terminal multiplexer configuration
- **wallpapers** - Desktop wallpaper images
- **zsh** - Zsh shell configuration

## Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/)

Install on Debian/Ubuntu:
```bash
sudo apt install stow
```

Install on Arch Linux:
```bash
sudo pacman -S stow
```

## Installation

Clone this repository to your home directory:

```bash
git clone <repository-url> ~/dotfiles
cd ~/dotfiles
```

### Install All Configurations

```bash
stow */
```

### Install Specific Configurations

Install individual packages as needed:

```bash
stow alacritty
stow nvim
stow tmux
stow zsh
```

### Uninstall Configurations

Remove symlinks for a specific package:

```bash
stow -D nvim
```

### Simulate Installation

Preview what would be created without making changes:

```bash
stow -n tmux
```

## How It Works

GNU Stow creates symlinks from your home directory to files in this repository. Each subdirectory represents a "package" containing configuration files organized exactly as they should appear in `$HOME`.

For example:
- `nvim/.config/nvim/init.lua` → `~/.config/nvim/init.lua`
- `tmux/.tmux.conf` → `~/.tmux.conf`
- `git/.gitconfig` → `~/.gitconfig`

## Notes

- **Backup existing configs**: Before running `stow`, back up any existing configuration files to avoid conflicts.
- **Conflicts**: If Stow encounters existing files, it will warn you. Remove or backup the conflicting files first.
- **Ignoring files**: README files and documentation in package directories won't be symlinked.

## Customization

1. Fork this repository
2. Modify configurations to suit your preferences
3. Add new packages by creating directories with the same structure as they should appear in `$HOME`
4. Commit and push your changes

## Adding New Configurations

To add a new application's config:

```bash
mkdir -p <app-name>/.config/<app-name>
cp ~/.config/<app-name>/* <app-name>/.config/<app-name>/
stow <app-name>
```

## License

Personal dotfiles - use as you wish.
