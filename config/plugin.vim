call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'cormacrelf/vim-colors-github'
call plug#end()


" Nerdtree
let NERDTreeRespectWildIgnore = 1
let NERDTreeIgnore = ['\.o$', '\.so$', 'tags', '\.d$', 'compile_commands.json']
let NERDTreeWinSize = 36
let g:NgetPathFlag = 0
function NgetPath()
    if g:NgetPathFlag == 0
        let g:NgetPathFlag = 1
        execute "NERDTreeFind"
        execute "normal! zz\<C-W>\<C-W>"
    else
        let g:NgetPathFlag = 0
        execute "NERDTreeClose"
    endif
endfunction
nnoremap <F2> :call NgetPath()<CR>

" vimdiff
if &diff
    let g:airline_theme = "github"
    let g:lightline = { 'colorscheme': 'github' }
    set background=light
    colorscheme github
    " Set cursor shape and color
    let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;grey\x7" " normal mode
    let &t_SI = "\<Esc>[2 q" . "\<Esc>]12;greyx7"  " insert mode
endif

" airline
let g:airline#extensions#tabline#enabled = 1

" git: vim-fugitive
nnoremap <Leader>g :Git blame<cr>

