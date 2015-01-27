"Configure indenting and alignment
set expandtab
set ts=4
set sw=4
autocmd FileType ruby set ts=2|set sw=2

set number

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

Bundle 'yssl/QFEnter'

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>

"Re-enable file type detection
filetype on

filetype plugin on
set omnifunc=syntaxcomplete#Complete

Bundle 'joonty/vdebug.git'

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    let g:ctrlp_use_caching = 0
endif
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
