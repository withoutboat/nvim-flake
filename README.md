# nvim-flake

standalone flake for home-manger nix

## Telescope.nvim Key Bindings

This document describes the custom key bindings configured for Telescope pickers
in this setup. The bindings are available in both insert (`i`) and normal (`n`)
modes inside Telescope prompt windows.

### Insert Mode (`i`)

| Key                | Action Description                          |
| ------------------ | ------------------------------------------- |
| `<C-n>`            | Next history item                           |
| `<C-p>`            | Previous history item                       |
| `<C-j>`            | Move to next selection                      |
| `<C-k>`            | Move to previous selection                  |
| `<C-c>`            | Close Telescope                             |
| `<Down>`           | Move to next selection                      |
| `<Up>`             | Move to previous selection                  |
| `<CR>`             | Confirm selection (open)                    |
| `<C-x>`            | Open selection in horizontal split          |
| `<C-v>`            | Open selection in vertical split            |
| `<C-t>`            | Open selection in new tab                   |
| `<C-u>`            | Scroll preview up                           |
| `<C-d>`            | Scroll preview down                         |
| `<PageUp>`         | Scroll results up                           |
| `<PageDown>`       | Scroll results down                         |
| `<Tab>`            | Toggle selection + move to worse selection  |
| `<S-Tab>`          | Toggle selection + move to better selection |
| `<C-q>`            | Send to quickfix list + open quickfix       |
| `<M-q>`            | Send selected to quickfix + open quickfix   |
| `<C-l>`            | Complete tag                                |
| `<C-/>` or `<C-_>` | Show available key bindings (`which_key`)   |

### Normal Mode (`n`)

| Key          | Action Description                          |
| ------------ | ------------------------------------------- |
| `q`          | Close Telescope                             |
| `<esc>`      | Close Telescope                             |
| `<CR>`       | Confirm selection (open)                    |
| `<C-x>`      | Open selection in horizontal split          |
| `<C-v>`      | Open selection in vertical split            |
| `<C-t>`      | Open selection in new tab                   |
| `<Tab>`      | Toggle selection + move to worse selection  |
| `<S-Tab>`    | Toggle selection + move to better selection |
| `<C-q>`      | Send to quickfix list + open quickfix       |
| `<M-q>`      | Send selected to quickfix + open quickfix   |
| `j`          | Move to next selection                      |
| `k`          | Move to previous selection                  |
| `H`          | Move to top                                 |
| `M`          | Move to middle                              |
| `L`          | Move to bottom                              |
| `<Down>`     | Move to next selection                      |
| `<Up>`       | Move to previous selection                  |
| `gg`         | Move to top                                 |
| `G`          | Move to bottom                              |
| `<C-u>`      | Scroll preview up                           |
| `<C-d>`      | Scroll preview down                         |
| `<PageUp>`   | Scroll results up                           |
| `<PageDown>` | Scroll results down                         |

## File Browser Extension

### Insert Mode (`i`)

| Key     | Action               | Description          |
| ------- | -------------------- | -------------------- |
| `<C-w>` | Delete word backward | Delete previous word |

### Normal Mode (`n`)

| Key | Action             | Description              |
| --- | ------------------ | ------------------------ |
| `N` | Create file/folder | Create file or folder    |
| `h` | Go to parent dir   | Move to parent directory |
| `/` | Enter insert mode  | Start search/filter      |

## Global Key Bindings (Normal Mode)

| Key  | Action         | Description                         |
| ---- | -------------- | ----------------------------------- |
| `;f` | `find_files`   | Find files (including hidden files) |
| `;r` | `live_grep`    | Search for text                     |
| `\\` | `buffers`      | List open buffers                   |
| `;t` | `help_tags`    | Open help/documentation search      |
| `;;` | `resume`       | Resume last Telescope session       |
| `;e` | `diagnostics`  | Show diagnostics                    |
| `sf` | `file_browser` | Open file browser at current file   |

---

**File Ignore Patterns:**\
The following are ignored in searches:

- `node_modules`
- `.git/`
- `target/`
- `dist/`
- `__pycache__/`

**Extensions Enabled:**

- `fzf`
- `file_browser`

> See the actual
> [telescope.lua](https://github.com/withoutboat/nvim-flake/telescope/telescope.lua)
> for details and updates.
