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
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-j> <C-w>j





map <C-d> :! zathura --fork %:t:r.pdf<CR><CR>
map <C-s> :w<CR>:!compiler %:p<CR> 
map <C-a> I.EQ<CR><CR>.EN<ESC>ki
map <space><space> <kDivide><gg><CR>da<i
map <C-g> :Goyo<CR> :set number rnu<CR> 
autocmd FileType tex map <C-l> :w !detex \| wc -w
