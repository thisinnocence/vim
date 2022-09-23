call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'preservim/nerdtree'
Plug 'cormacrelf/vim-colors-github'
call plug#end()

" LeaderF
" Ctrl + P  file search
let g:Lf_ShortcutF = '<c-p>'
noremap <Leader>ff :LeaderfFunction<cr>
noremap <Leader>fb :LeaderfBuffer<cr>
noremap <Leader>ft :LeaderfTag<cr>
noremap <Leader>fm :LeaderfMru<cr>
noremap <Leader>fl :LeaderfLine<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.45
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_NormalMap = {
	\ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
	\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
	\ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
	\ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
	\ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
	\ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
	\ }

" Nerdtree
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

" apt install ctags
" ctags -R
set tags=./tags;,tags

" apt install cscope
" cscope -Rb
if filereadable("cscope.out")
    cs add cscope.out
endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> " all reference
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> " caller func

