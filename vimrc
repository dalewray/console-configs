syntax enable
set paste
set ruler
set laststatus=2        " always show filename/status bar
set scrolloff=10         " always show 3 lines above or below cursor
"set title
"set titlestring=VIM:\ %F
set titlestring=%<%F\ %M%=%l/%L\ -\ %p%% titlelen=70
set ts=4
filetype plugin indent on
set backupdir=~/.backup/
set backspace=indent,eol,start
"hi Search ctermbg=LightGreen
:set hlsearch!
map <F1> :set hlsearch!<CR>
map <F2> :!php -l %<CR>
map <F8> :set spell!<CR>
set spelllang=en_us
"set spell
set nobackup
set nowritebackup
hi WarningMsg ctermfg=white ctermbg=red guifg=White guibg=Red gui=None
highlight Folded guifg=White guibg=Black

" returns a string <branch/XX> where XX corresponds to the git status
" (for example "<master/ M>")
function CurrentGitStatus()
    let gitoutput = split(system('git status --porcelain -b '.shellescape(expand('%')).' 2>/dev/null'),'\n')
    if len(gitoutput) > 0
        let b:gitstatus = strpart(get(gitoutput,0,''),3) . '/' . strpart(get(gitoutput,1,'  '),0,2)
    else
        let b:gitstatus = ''
    endif
endfunc
autocmd BufEnter,BufWritePost * call CurrentGitStatus()
" example of use in the status line:
" set stl=%f\ %(<%{b:gitstatus}>%)
"colors: %#foo# to switch colors to the foo highlight group. Use %* to switch back 
" :higligh show colors
set statusline=\ 
set stl+=%#SignColumn#
set stl+=%<%f\ 
set stl+=%*
set statusline+=%(<%{b:gitstatus}>%)
set statusline+=%h%m%r%=%-14.(%l,%c%V%)\ 
set statusline+=%P

let @a = "    include \"/data/common/password.php\"; //backport PHP password-* functions to this PHP 5.3\n"
