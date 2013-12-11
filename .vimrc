"Configure indenting and alignment
set expandtab
set ts=4
set sw=4

"Enable syntax coloring
syntax on

"Hihlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Interpret twig files like django tpl files
au BufRead,BufNewFile *.twig set filetype=htmldjango

"Enable backspace
set backspace=indent,eol,start

"Load Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


"Load additional bundles

"php doc generator
Bundle 'tobyS/vmustache'
Bundle 'tobyS/pdv'
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>

"File explorer
Bundle 'scrooloose/nerdtree'
map fe :NERDTree<cr>

"Re-enable file type detection
filetype on
