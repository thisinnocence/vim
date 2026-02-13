# Vim cfg

Personal Vim configuration focused on C/C++ development, code navigation, and fast project search.

## Keymap

Quick reference: [`KEYMAP.md`](KEYMAP.md)

## Features

- LSP workflow via `coc.nvim` + `clangd`
- Fast file/symbol search via LeaderF (+ ripgrep)
- Git blame integration via `vim-fugitive`
- Project tree via `NERDTree`
- Async build task via `asyncrun.vim`
- ctags/cscope based code navigation

## Requirements

### Required

- Vim 8.2+ (newer is better for coc.nvim)
- `nodejs` (for coc.nvim)
- `clangd`
- `universal-ctags`

Install base dependencies (Ubuntu example):

```bash
sudo apt install nodejs clangd universal-ctags
```

### Optional but recommended

- `ripgrep` (used by LeaderF grep search)
- `cscope` (for `cs find`)

```bash
sudo apt install ripgrep cscope
```

## Installation

1. Clone this repo to `~/.vim`.
2. Run:

```bash
bash install.sh
```

`install.sh` will:

- download `vim-plug` (`autoload/plug.vim`) if missing
- back up existing `~/.vimrc` and `~/.vim` to `~/.vimrc_bak` / `~/.vim_bak`
- create symlinks to this repo (`~/.vim`, `~/.vimrc`)

## Plugin setup

Open Vim and run:

```vim
:PlugInstall
:CocInstall coc-clangd
```

## Optional index setup (project root)

```bash
ctags -R
cscope -Rb
```

## Included plugins

- `easymotion/vim-easymotion`
- `tpope/vim-fugitive`
- `vim-airline/vim-airline`
- `vim-airline/vim-airline-themes`
- `Yggdroot/LeaderF`
- `preservim/nerdtree`
- `cormacrelf/vim-colors-github`
- `skywind3000/asyncrun.vim`
- `neoclide/coc.nvim`

## References

### basic vim

- <http://oenhan.com/vim8-c-ide-plugin-vimrc>
- <https://github.com/oenhan/vim>
- <https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim>

### plugin manager

- <https://github.com/junegunn/vim-plug>

### vim-lsp

- <https://clangd.llvm.org>
- <https://github.com/neoclide/coc.nvim>
- <https://github.com/clangd/coc-clangd>

### ctrl-p(search-file/symbol)

- <https://github.com/Yggdroot/LeaderF>
- <https://github.com/BurntSushi/ripgrep>

### ctags/gtags/cscope

- <https://github.com/universal-ctags/ctags>
- <https://www.gnu.org/software/global>
- <https://cscope.sourceforge.net>

### theme

- <https://github.com/vim-airline/vim-airline>
- <https://github.com/vim-airline/vim-airline-themes>
- <https://github.com/cormacrelf/vim-colors-github>

### directory tree

- <https://github.com/preservim/nerdtree>

### quick move

- <https://github.com/easymotion/vim-easymotion>

### git

- <https://github.com/tpope/vim-fugitive>

### async

- <https://github.com/skywind3000/asyncrun.vim>
