set expandtab shiftwidth=4 softtabstop=4 tabstop=4
set hlsearch
set modeline
set noai

syntax on
set background=dark
colorscheme solarized

" Clojure sort of uses 2 spaces.  It also uses single spaces.
au BufNewFile,BufRead *.clj setlocal shiftwidth=2 softtabstop=2 tabstop=2

" Load the Vim configuration that ships with Go.  Additionally set us up to
" run goimports on save.
au FileType go setlocal noexpandtab
let g:gofmt_command = "goimports"
filetype off
filetype plugin off
set runtimepath+=$GOROOT/misc/vim
filetype plugin on
syntax on
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" JavaScript, especially node, likes to use 2 spaces but at Betable,
" we use 4 spaces.
au FileType javascript setlocal shiftwidth=4 softtabstop=4 tabstop=4
au BufRead,BufNewFile *.ejs setlocal ft=html shiftwidth=4 softtabstop=4 tabstop=4

" Various almost-Makefiles are used in Go source trees.
au BufRead,BufNewFile Make.cmd,Make.inc,Make.pkg setlocal ft=make

" Makefiles absolutely require tabs.
au FileType make setlocal noexpandtab

" Markdown needs to be told it is.
au BufRead,BufNewFile *.md setlocal filetype=markdown

" Protocol buffers can be whatever but I like tabs because I mostly use
" them with Go.
au BufRead,BufNewFile *.proto setlocal noexpandtab

" Silly Rubytards like 2 spaces.
au FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
au BufRead,BufNewFile *.erb setlocal shiftwidth=2 softtabstop=2 tabstop=2

" Capfile, Gemfile, Rakefile, *.ru, and *.gemspec files are Ruby.
au BufRead,BufNewFile Capfile,Gemfile,Rakefile,*.ru,*.gemspec setlocal ft=ruby

" Use the Bash syntax highlighting for all shells.  It's prettier, and
" I know the difference between POSIX shell and Bash.  It's fine.
let g:is_bash=1
