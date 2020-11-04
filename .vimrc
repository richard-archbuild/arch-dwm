" General

set number relativenumber
syntax on
autocmd BufWritePost *.tex :!pdflatex %:p > /dev/null
autocmd BufWritePost .Xresources :!xrdb %:p
autocmd BufWritePost config.h,config.def.h :!sudo make install
set wildmode=longest,list,full

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

" Shortcuts

map <C-d> :! zathura --fork %:t:r.pdf
map <space><space> <kDivide><gg>da<i
map <C-j> :silent! norm i\subsection{}o<gg>kf}i  
map <C-g> :Goyo  :set number rnu 
autocmd FileType tex map <C-l> :w !detex \| wc -w
