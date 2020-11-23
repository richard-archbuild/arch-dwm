" General
set hidden
set number relativenumber
syntax on
autocmd BufWritePost .Xresources :!xrdb %:p
set wildmode=longest,list,full

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

" Shortcuts

map <C-d> :! zathura --fork %:t:r.pdf<CR><CR>
map <C-w> :w<CR>:!tmux new -d "compiler %:p"<CR> 
map <C-a> I.EQ<CR><CR>.EN<ESC>ki
map <space><space> <kDivide><gg>
da<i
map <C-g> :Goyo 
 :set number rnu 
autocmd FileType tex map <C-l> :w !detex \| wc -w
