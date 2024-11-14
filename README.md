# Vim cfg

## Installation

### Install dependency

> Install nodejs for coc.nvim:
> <https://nodejs.org/en/download/package-manager>

```bash
sudo apt install universal-ctags
sudo apt install clangd
```

### Run install.sh

```bash
bash install.sh
```

this script will backup your existing Vim configurations and create a symbolic link to the new ones.

### Install vim plugins and coc plugins

Open Vim and execute the following commands within Vim to reinstall Vim plugins and Coc plugins.

```bash
:PlugInstall
:CocInstall coc-clangd
```

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

### asyn

- <https://github.com/skywind3000/asyncrun.vim>

