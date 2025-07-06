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

## Neovim LSP Key Mappings

> Generated for: withoutboat  
> Date: 2025-07-06 14:10:03 UTC

### LSP Buffer Commands

| Mapping | Mode | Action                                   | Description                                                       |
|---------|------|------------------------------------------|-------------------------------------------------------------------|
| K       | Normal | <code>:lua vim.lsp.buf.hover()</code>        | Display hover information for the symbol under the cursor.       |
| gd      | Normal | <code>:lua vim.lsp.buf.definition()</code>   | Jump to the definition of the symbol under the cursor.           |
| gD      | Normal | <code>:lua vim.lsp.buf.declaration()</code>  | Jump to the declaration of the symbol under the cursor.          |
| gi      | Normal | <code>:lua vim.lsp.buf.implementation()</code> | Jump to the implementations of the symbol under the cursor.       |
| go      | Normal | <code>:lua vim.lsp.buf.type_definition()</code> | Jump to the type definition of the symbol under the cursor.       |
| gr      | Normal | <code>:lua vim.lsp.buf.references()</code>    | Show all references to the symbol under the cursor.              |
| gs      | Normal | <code>:lua vim.lsp.buf.signature_help()</code> | Display signature help information.                              |
| <F2>    | Normal | <code>:lua vim.lsp.buf.rename()</code>         | Rename the symbol under the cursor.                              |
| <F3>    | Normal | <code>:lua vim.lsp.buf.format({ async = true })</code> | Format the current buffer asynchronously.                         |
| <F4>    | Normal | <code>:lua vim.lsp.buf.code_action()</code>    | Show and select a code action for the current cursor position.    |
| gl      | Normal | <code>:lua vim.diagnostic.open_float()</code>  | Open the diagnostics float window with details.                  |
| [d      | Normal | <code>:lua vim.diagnostic.goto_prev()</code>   | Jump to the previous diagnostic message.                          |
| ]d      | Normal | <code>:lua vim.diagnostic.goto_next()</code>   | Jump to the next diagnostic message.                              |

### Completion (nvim-cmp) Mappings

| Mapping | Mode | Description |
|---------|------|-------------|
| <Up>    | Insert | Select previous completion item |
| <Down>  | Insert | Select next completion item |
| <C-p>   | Insert | Select previous completion item (alternative) |
| <C-n>   | Insert | Select next completion item (alternative) |
| <C-u>   | Insert | Scroll documentation window up by 4 lines |
| <C-d>   | Insert | Scroll documentation window down by 4 lines |
| <C-e>   | Insert | Abort/cancel completion |
| <C-y>   | Insert | Confirm completion (with selection) |
| <CR>    | Insert | Confirm completion (without selection) |
| <C-f>   | Insert, Select | Jump to next snippet placeholder (if available) |
| <C-b>   | Insert, Select | Jump to previous snippet placeholder (if available) |
| <Tab>   | Insert, Select | Select next item, or trigger completion if not visible |
| <S-Tab> | Insert, Select | Select previous item in completion menu |
