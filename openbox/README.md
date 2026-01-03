# Openbox Configuration

Custom Openbox window manager configuration with comprehensive keyboard shortcuts, window tiling, and application launchers.

## Overview

This configuration provides a minimal, keyboard-driven desktop environment with:
- 6 virtual desktops
- Vim-inspired directional window management
- Window tiling (snap to half screen)
- Custom application launchers
- Clearlooks theme with Liberation Sans fonts

## Desktop Settings

- **Virtual Desktops**: 6 workspaces numbered 1-6
- **Theme**: Clearlooks
- **Font**: Liberation Sans (10pt for active windows, 9pt elsewhere)
- **Focus Policy**: Click to focus, new windows auto-focus
- **Window Placement**: Smart placement, centered on screen
- **Margins**: 1px top margin (for panel/tint2)

## Key Bindings

### Application Launchers

| Keybinding | Action | Application |
|------------|--------|-------------|
| `Win+r` | Run dialog | gmrun |
| `Win+t` | Terminal | terminator |
| `Win+f` | File manager | thunar |
| `Win+w` | Web browser | vivaldi |
| `Win+h` | System monitor | htop (in terminal) |
| `Win+v` | Volume control | mate-volume-control |
| `Win+l` | Lock screen | xscreensaver |
| `Win+x` | Logout/Exit | openbox --exit |

### Window Management

| Keybinding | Action |
|------------|--------|
| `Win+q` | Close window |
| `Win+0` | Maximize window |
| `Win+Shift+0` | Toggle fullscreen |
| `Alt+Space` | Show window menu |
| `Alt+Escape` | Lower window, unfocus |

### Window Tiling (Snap to Half Screen)

| Keybinding | Action |
|------------|--------|
| `Win+Left` | Snap window to left half (50% width) |
| `Win+Right` | Snap window to right half (50% width) |
| `Win+Up` | Snap window to top half (50% height) |
| `Win+Down` | Snap window to bottom half (50% height) |

### Window Switching

| Keybinding | Action |
|------------|--------|
| `Alt+Tab` | Cycle to next window |
| `Alt+Shift+Tab` | Cycle to previous window |
| `Ctrl+Alt+Tab` | Cycle all windows (including panels/desktop) |
| `Win+Shift+Left` | Directional cycle - left |
| `Win+Shift+Right` | Directional cycle - right |
| `Win+Shift+Up` | Directional cycle - up |
| `Win+Shift+Down` | Directional cycle - down |
| `Win+Tab` | Show window list menu |

### Desktop/Workspace Switching

| Keybinding | Action |
|------------|--------|
| `Win+1` through `Win+6` | Jump directly to workspace 1-6 |
| `Ctrl+Alt+Left` | Go to desktop on the left |
| `Ctrl+Alt+Right` | Go to desktop on the right |
| `Ctrl+Alt+Up` | Go to desktop above |
| `Ctrl+Alt+Down` | Go to desktop below |
| `Shift+Alt+Left` | Send window to desktop on the left |
| `Shift+Alt+Right` | Send window to desktop on the right |
| `Shift+Alt+Up` | Send window to desktop above |
| `Shift+Alt+Down` | Send window to desktop below |
| `Win+d` | Toggle show desktop |

### Menus

| Keybinding | Action |
|------------|--------|
| `Win+Space` | Show root menu |
| `Alt+Ctrl+q` | Show root menu (alternate) |

### Screenshots

| Keybinding | Action |
|------------|--------|
| `Print` | Screenshot GUI (flameshot) |
| `Alt+Print` | Full screenshot (flameshot) |

## Mouse Bindings

### Window Frame

| Action | Result |
|--------|--------|
| `Alt+Left-Click` | Focus and raise window |
| `Alt+Left-Drag` | Move window |
| `Alt+Right-Drag` | Resize window |
| `Alt+Middle-Click` | Lower window, unfocus |
| `Alt+Scroll-Up` | Previous desktop |
| `Alt+Scroll-Down` | Next desktop |

### Titlebar

| Action | Result |
|--------|--------|
| `Left-Click` | Focus and raise |
| `Left-Drag` | Move window |
| `Double-Click` | Toggle maximize |
| `Right-Click` | Show window menu |
| `Scroll-Up` | Shade window (roll up) |
| `Scroll-Down` | Unshade window (roll down) |
| `Middle-Click` | Lower window |

### Desktop/Root Window

| Action | Result |
|--------|--------|
| `Right-Click` | Show root menu |
| `Middle-Click` | Show window list menu |
| `Scroll-Up` | Previous desktop |
| `Scroll-Down` | Next desktop |

### Window Borders

- **Edges**: Left-drag to resize from that edge
- **Corners**: Left-drag for free-form resize

## Application-Specific Rules

### GIMP

- **Toolbox and Docks**: Maximized vertically
- **Image Windows**: Centered on screen

### gmessage

- No decorations, skipped in pager and taskbar

## Theme Configuration

- **Title Layout**: `DSLIMC`
  - D: Omnipresent (all desktops)
  - S: Shade (roll up/down)
  - L: Label (window title)
  - I: Iconify
  - M: Maximize
  - C: Close

## Focus Behavior

- **New windows**: Automatically focused
- **Follow mouse**: Disabled
- **Focus delay**: 200ms
- **Focus last**: Returns to last used window when changing desktops
- **Raise on focus**: Disabled

## Resistance & Snapping

- **Window resistance**: 10 pixels
- **Screen edge resistance**: 20 pixels

## Dock/Panel Settings

- **Position**: Top-left
- **Stacking**: Above windows
- **Direction**: Vertical
- **Auto-hide**: Disabled
- **Move button**: Middle mouse button

## Configuration Files

- Main config: `.config/openbox/rc.xml`
- Menu config: `.config/openbox/menu.xml`

## Installation

1. Copy the `.config/openbox/` directory to your home directory
2. Ensure required applications are installed:
   - `gmrun` (run dialog)
   - `terminator` (terminal)
   - `thunar` (file manager)
   - `vivaldi` (web browser)
   - `mate-volume-control` (volume control)
   - `xscreensaver` (screen locker)
   - `flameshot` (screenshots)
   - `htop` (system monitor)

3. Reload openbox: `openbox --reconfigure`

## Tips

- Chain quit key for multi-key bindings: `Ctrl+g`
- Desktop popup shows for 875ms when switching workspaces
- Resize popup shows for non-pixel-perfect resizes (terminals, etc.)
- Screen edge warp time: 400ms when moving windows to screen edges

## Notes

- This configuration assumes a 6-desktop layout
- Mouse pointer does not warp across desktops when edge-switching
- Double-click time: 200ms
- Drag threshold: 8 pixels
