set viminfo+=n~/.config/nvim/vim/viminfo

"use system clipboard by default
"set clipboard+=unnamedplus

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8


set wildmode=longest,list,full
syntax on
set showmatch
set visualbell
set t_vb=
colo pablo


"filetype plugin indent on
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent

set ignorecase
set smartcase
set magic
set bs=indent,eol,start

setglobal complete -=i

set nobackup

autocmd BufNewFile,BufRead *.md
            \ setlocal comments-=fb:-  |
            \ setlocal comments-=fb:*  |
            \ setlocal comments+=b:-  |
            \ setlocal comments+=b:*  |
            \ setlocal formatoptions+=ro
" use q to use visual block mode
nnoremap q <c-v>
" use qq to record macro
nnoremap qq q

set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set hlsearch
set incsearch
"This unsets the "last search pattern" register by hitting return
nnoremap <silent> <CR> :noh<CR><CR>

inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"zz" | endif
endif

"status bar colors

au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=14
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=218
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=218

" reload configs on save
autocmd bufwritepost ~/.config/i3/config :silent !i3-msg restart ; notify-send "Reloaded i3 config"
autocmd bufwritepost ~/.bashrc :silent !source ~/.bashrc ; notify-send "Reloaded .bashrc"



" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
"set statusline+=%3*│                                     " Separator
"set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
"set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ l:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%2*\ c:\ %02v\                         " Colomn number
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
