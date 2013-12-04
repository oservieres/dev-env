"configure indenting and alignment
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

"interpret twig files like django tpl files
au BufRead,BufNewFile *.twig set filetype=htmldjango
