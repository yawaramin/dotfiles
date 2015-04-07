function! ToggleTextWidth()
  if &textwidth == 72
    set textwidth=0
    echo "textwidth=0"
  else
    set textwidth=72
    echo "textwidth=72"
  end
endfunction

if has("multi_byte")
  set encoding=utf-8
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

" This will need to be set correctly on each computer.
set dir=C:/Users/Yawar/AppData/Local/Temp

" This will need to be changed if we can't get Input Mono installed.
set gfn=InputMonoCondensed:h11:cANSI

" These require the Vim indent guides plugin.
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 0

" Make vim's unnamed register and the GUI clipboard point to the same
" thing.
set clipboard=unnamed

set ff=unix
set guicursor+=a:blinkon0
set noshowmode
set hidden
set ru
set et
set ts=2
set sw=2
set softtabstop=2
set nojoinspaces
set ai
set is
set autoread
set nostartofline
set wildmenu
set wildignore=*.pyc
set bs=indent,eol,start
se hls
set colorcolumn=73
let mapleader="\<Tab>"
nnoremap <Leader><space> :noh<CR>
nnoremap <Leader>` :b#<CR>
nnoremap <Leader>[ :tabprev<CR>
nnoremap <Leader>] :tabnext<CR>
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
nnoremap <Leader>a gg0vG$
nnoremap <Leader>b :ls<CR>
nnoremap <Leader>c <C-w>c
nnoremap <Leader>d :'a,.s/^  //\|noh<CR>
nnoremap <Leader>dp :diffput\|diffupdate<CR>
nnoremap <Leader>e a<C-R>=strftime("%Y-%m-%d %H:%M")<CR><CR><CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>i :'a,.s/^/  /\|noh<CR>
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Strip spaces from all empty lines.
nnoremap <Leader>r :%s/^ \+$//<CR>
nnoremap <Leader>s <C-w>s
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>w :call ToggleTextWidth()<CR>
nnoremap <C-Tab> :tabnext<CR>
nnoremap ; :
nnoremap Q gqap
nnoremap V :w<CR>

set background=dark
hi ColorColumn ctermbg=black
syntax on
syntax region markdownFold start="^\z(#\+\) " end="\(^#\(\z1#*\)\@!#*[^#]\)\@=" transparent fold

autocmd Filetype text set tw=72
autocmd Filetype gitcommit set tw=72
autocmd BufEnter *.md setlocal ft=markdown
autocmd BufEnter *.md setlocal tw=72
autocmd BufEnter *.md setlocal fdm=syntax
autocmd BufEnter *.clj setlocal ft=lisp
autocmd Filetype python iabbrev <buffer> \ <BS>lambda

" This requires the Solarized plugin.
if has('gui_running')
  let g:solarized_contrast="high"    "default value is normal
  let g:solarized_visibility="high"    "default value is normal
  colorscheme solarized
  set lines=50
  set columns=100
  set go-=T
endif
