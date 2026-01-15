# Ranger

Terminal file manager with vim-style keybindings.

## Keybindings

### Navigation

| Key | Action |
|-----|--------|
| `h/j/k/l` | Left/down/up/right (vim-style) |
| `H/L` | History back/forward |
| `J/K` | Half-page down/up |
| `gg/G` | Go to top/bottom |
| `[/]` | Move parent directory up/down |
| `{/}` | Traverse directories |

### Go To (`g` prefix)

| Key | Action |
|-----|--------|
| `gh` | Home (~) |
| `gr` / `g/` | Root (/) |
| `ge` | /etc |
| `gu` | /usr |
| `gm` | /media |
| `gM` | /mnt |
| `gp` | /tmp |
| `gv` | /var |
| `cd` | Console cd prompt |

### File Operations

| Key | Action |
|-----|--------|
| `yy` | Copy (yank) |
| `dd` | Cut |
| `pp` | Paste |
| `po` | Paste overwrite |
| `pl` | Paste symlink |
| `pL` | Paste relative symlink |
| `dD` | Delete |
| `dT` | Trash |
| `ud` / `uy` | Uncut |

### Renaming

| Key | Action |
|-----|--------|
| `cw` | Rename (console prompt) |
| `a` | Rename append (before extension) |
| `A` | Rename (full, cursor at end) |
| `I` | Rename (full, cursor at start) |

### Selection

| Key | Action |
|-----|--------|
| `Space` | Mark/select file |
| `v` | Toggle select all |
| `uv` | Unselect all |
| `V` | Visual mode |
| `t` | Tag toggle |
| `ut` | Remove tag |

### Yank Paths

| Key | Action |
|-----|--------|
| `yp` | Yank full path |
| `yd` | Yank directory |
| `yn` | Yank filename |
| `y.` | Yank name without extension |

### Search & Filter

| Key | Action |
|-----|--------|
| `/` | Search |
| `n/N` | Next/previous match |
| `f` | Find |
| `zf` | Filter |

### Tabs

| Key | Action |
|-----|--------|
| `Ctrl-n` / `gn` | New tab |
| `Ctrl-w` / `gc` | Close tab |
| `Tab` / `Shift-Tab` | Next/prev tab |
| `gt` / `gT` | Next/prev tab |
| `Alt-1..9` | Jump to tab 1-9 |
| `uq` | Restore closed tab |

### Sorting (`o` prefix)

| Key | Action |
|-----|--------|
| `on/oN` | Natural (default) |
| `os/oS` | Size |
| `om/oM` | Modification time |
| `oc/oC` | Creation time |
| `oe/oE` | Extension |
| `ob/oB` | Basename |
| `ot/oT` | Type |
| `or` | Reverse sort |
| `oz` | Random |

Lowercase = ascending, uppercase = descending.

### View Toggles (`z` prefix)

| Key | Action |
|-----|--------|
| `zh` / `Ctrl-h` | Show hidden files |
| `zp` | Preview files |
| `zP` | Preview directories |
| `zi` | Preview images |
| `zv` | Use preview script |
| `zc` | Collapse preview |
| `zd` | Sort directories first |
| `zm` | Mouse enabled |

### Filter Stack (`.` prefix)

| Key | Action |
|-----|--------|
| `.d` | Filter directories |
| `.f` | Filter files |
| `.l` | Filter links |
| `.n` | Filter by name |
| `.c` | Clear filters |
| `..` | Show filter stack |

### Bookmarks

| Key | Action |
|-----|--------|
| `m<key>` | Set bookmark |
| `'<key>` / `` `<key>`` | Jump to bookmark |
| `um<key>` | Unset bookmark |

### Other

| Key | Action |
|-----|--------|
| `i` | Display/preview file |
| `E` | Edit file |
| `S` | Open shell in current dir |
| `r` | Open with... |
| `?` | Help |
| `q` / `Q` | Quit / Quit all |
| `R` | Reload directory |
| `du` | Show disk usage |
| `dU` | Show disk usage (sorted) |
| `=` | Chmod |
| `w` | Open task view |
| `W` | Display log |
| `:` / `;` | Open console |
| `!` | Shell command |
| `~` | Toggle viewmode |

### Function Keys

| Key | Action |
|-----|--------|
| `F1` | Help |
| `F2` | Rename |
| `F3` | Display file |
| `F4` | Edit |
| `F5` | Copy |
| `F6` | Cut |
| `F7` | mkdir |
| `F8` | Delete |
| `F10` | Exit |
