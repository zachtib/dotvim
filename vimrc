call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

filetype on
filetype plugin on

let g:syntastic_python_checker = 'pyflakes'

set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
