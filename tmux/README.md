# Tmux Configuration

This directory contains tmux configuration files managed with GNU Stow.

## Key Bindings Reference

### Prefix Key
- **Prefix**: `C-a` (Control+a) - changed from default `C-b`
- `C-a C-a` - Send prefix to nested tmux session

### Configuration Management
- `prefix + r` - Reload tmux configuration file

### Pane Management

#### Splitting Panes
- `prefix + |` - Split pane horizontally (creates vertical divider)
- `prefix + -` - Split pane vertically (creates horizontal divider)

#### Navigating Panes
- `prefix + h` - Move to left pane
- `prefix + j` - Move to bottom pane
- `prefix + k` - Move to top pane
- `prefix + l` - Move to right pane
- `M-Left` - Move to left pane (no prefix, Alt+Left arrow)
- `M-Right` - Move to right pane (no prefix, Alt+Right arrow)
- `M-Up` - Move to top pane (no prefix, Alt+Up arrow)
- `M-Down` - Move to bottom pane (no prefix, Alt+Down arrow)

#### Resizing Panes
- `prefix + H` - Resize pane left by 5 cells (repeatable)
- `prefix + J` - Resize pane down by 5 cells (repeatable)
- `prefix + K` - Resize pane up by 5 cells (repeatable)
- `prefix + L` - Resize pane right by 5 cells (repeatable)

#### Other Pane Operations
- `prefix + C-l` - Clear screen and scrollback history

### Window Management
- `prefix + c` - Create new window (in current directory)
- `C-Tab` - Next window (no prefix)
- `C-S-Tab` - Previous window (no prefix, Control+Shift+Tab)

### Special Features
- `prefix + S` - Toggle synchronize panes (type in all panes at once)

### Copy Mode (Vim-style)

#### Entering/Exiting
- `prefix + [` - Enter copy mode
- `q` - Exit copy mode

#### Selection
- `v` - Begin selection (in copy mode)
- `C-v` - Toggle rectangle selection (in copy mode)
- `y` - Copy selection and exit copy mode

#### Pasting
- `prefix + ]` - Paste from buffer

## Settings

- **Mouse support**: Enabled
- **Window/pane indexing**: Starts at 1 (not 0)
- **Copy mode**: Vim keybindings enabled
- **Default shell**: zsh
- **Terminal**: tmux-256color with true color support
- **Scrollback**: 50,000 lines

## Key Notation

- `C-` = Control key
- `M-` = Meta/Alt key
- `S-` = Shift key
- `prefix` = `C-a` (Control+a)

## Tips

- Repeatable bindings (marked with -r flag) can be pressed multiple times without re-entering the prefix
- Mouse support allows clicking to select panes and windows, and dragging to resize
- Synchronize panes is useful for running the same commands across multiple panes simultaneously
