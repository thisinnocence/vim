# Vim Custom Keymap Quick Reference

For anything not customized here, use Vim default keybindings.

## Basics

- `Leader` key is `,`
- In this document, `<Leader>` means pressing `,`

## General and Window Navigation

| Key | Action |
| --- | --- |
| `<Leader><CR>` | Clear search highlight (`:noh`) |
| `Ctrl+h` | Move to left window |
| `Ctrl+j` | Move to lower window |
| `Ctrl+k` | Move to upper window |
| `Ctrl+l` | Move to right window |
| `<Leader>q` | Quit current window (`:q`) |
| `Ctrl+n` | Switch to next buffer (`:bn`) |
| `<Leader>t` | Open terminal in right vertical split |

## LeaderF / Search

| Key | Action |
| --- | --- |
| `Ctrl+p` | LeaderF file search |
| `<Leader>ff` | LeaderF function list |
| `<Leader>ft` | LeaderF tag list |
| `<Leader>fm` | LeaderF recent files (MRU) |
| `<Leader>fl` | LeaderF line search in current buffer |
| `<Leader>ss` | Run `rg` search for word under cursor |

## NERDTree / Build / Git

| Key | Action |
| --- | --- |
| `F2` | Toggle NERDTree and locate current file |
| `F5` | Run `make -j` in `build` directory (AsyncRun) |
| `<Leader>g` | `:Git blame` |

## LSP (coc.nvim)

| Key | Action |
| --- | --- |
| `[g` | Previous diagnostic |
| `]g` | Next diagnostic |
| `F8` | Next diagnostic |
| `gd` | Go to definition |
| `gy` | Go to type definition |
| `gi` | Go to implementation |
| `gr` | Find references |
| `K` | Show documentation / hover |
| `<Leader>rn` | Rename symbol |
| `<Leader>ac` | Code action |
| `<Leader>qf` | Fix current issue |
| `<Space>o` | Open outline (`CocList outline`) |
| `<Space>s` | Search workspace symbols |
| `<Space>a` | Show diagnostics list |

## cscope

| Key | Action |
| --- | --- |
| `Ctrl+\` `s` | Find symbol references (`cs find s`) |
| `Ctrl+\` `c` | Find callers of current function (`cs find c`) |

## Insert Mode

| Key | Action |
| --- | --- |
| `Ctrl+a` | Move cursor to line start |
| `Ctrl+e` | Move cursor to line end |
| `Tab` | coc next completion item / normal Tab |
| `Shift+Tab` | coc previous completion item |
| `Enter` | Confirm coc completion item |

## Visual Mode

| Key | Action |
| --- | --- |
| `p` | Paste without overwriting unnamed register (repeatable paste) |

## Extra Command Aliases (Not Keybindings)

- `:W` -> `:w`
- `:WQ` -> `:wq`
- `:Q` -> `:q`
- `:QA` -> `:qa`
- `:WQA` -> `:wqa`
