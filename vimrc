execute pathogen#infect()  

syntax on 
set background=dark
colorscheme solarized 
let g:solarized_termcolors=256
filetype plugin indent on  

set hidden	
set autochdir
set wildmenu
set showcmd
set hlsearch
set incsearch
set ignorecase 
set smartcase
set mouse=n
set expandtab
set number
set cursorline 
set lazyredraw
set backup
set writebackup
set swapfile
set dir=/tmp

map nnoremap <leader>u :GundoToggle<CR>

let g:rustfmt_autosave = 1  
let g:racer_cmd="/root/src/racer/target/release/racer"
let $RUST_SRC_PATH="/home/ritesh/src/rust/src/"
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction


Helptags  

" Ref: http://dougblack.io/words/a-good-vimrc.html
