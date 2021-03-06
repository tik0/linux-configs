set nocompatible

" Skip readonly warnings
set autoread

filetype off

call pathogen#infect()

filetype plugin indent on

"filetype on
"filetype indent on
"filetype plugin on

"set tags+=/home/elly/Projects/ethSec/tags
set tags=./tags;/
set hidden

" Turn on spell checking (if you don't check spelling, you suck)
set spell
set spelllang=en,fromtags

" Autoload doxygen highlighting
let g:load_doxygen_syntax=1

" Disable the swap files creation
set noswapfile

" check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

" Show hidden characters
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Highlight the syntax
syntax on
set background=dark "or light
"set syntax=cpp.doxygen

" Show line numbers
set number

" English charset by default
set iminsert=0

" English charset by default for search
set imsearch=0

" Ignore letters register for search
set ic

" Highlight search
set hlsearch

nmap <C-h> :set hlsearch!<CR>
imap <C-h> <Esc> :set hlsearch!<CR>
vmap <C-h> <Esc> :set hlsearch!<CR>

" Incremental search
set is

" Text width
" set textwidth=80

" Minimal heigh
set winminheight=0

" Maximum size for active window
set noequalalways
set winheight=9999

" Insert 4 spaces instead tab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Show executed command
set showcmd

" Lynebreak by words but not letters
set linebreak
set dy=lastline

" Autocomplete
set completeopt=menu

" Edit mode for finded line
set incsearch

" Stop search at the file end
set nowrapscan

" Show/hide line numbers
map <F1> :set invnumber<CR>
imap <F1> <ESC>:set invnumber<CR>
vmap <F1> <ESC>:set invnumber<CR>

" Save file
nmap <F2> :w!<CR>
imap <F2> <Esc>:w!<CR>
vmap <F2> <Esc>:w!<CR>

" Show hidden characters
nmap <F3> :set list!<CR>
imap <F3> <Esc>:set list!<CR>
vmap <F3> <Esc>:set list!<CR>

" Switch buffers
set switchbuf=usetab
nnoremap <C-s> :sbnext<CR>
nnoremap <C-a> :sbprev<CR>

" Close vim
nmap <F4> :q!<CR>
imap <F4> <Esc>:q!<CR>
vmap <F4> <Esc>:q!<CR>

" Paste indents toggle
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

" Show all occurrences of a tag
map <F6> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Toggle SPACE / TAB input
function! ToggleTab()
   if &expandtab
      set noexpandtab
   else
      set expandtab
   endif
endfunction

nmap <F7> :call ToggleTab()<CR>
imap <F7> <Esc>:call ToggleTab()<CR>
vmap <F7> <Esc>:call ToggleTab()<CR>

" Close buffer command
map <C-w> :bw<CR>
imap <C-w> <ESC>:bw<CR>
vmap <C-w> <ESC>:bw<CR>

" Switch source / header file
map <C-x> :FSHere<CR>
imap <C-x> <ESC>:FSHere<CR>
vmap <C-x> <ESC>:FSHere<CR>

" Launch the FZF plugin
map <C-z> :FZF<CR>
imap <C-z> <ESC>:FZF<CR>
vmap <C-z> <ESC>:FZF<CR>

" Page Up/Down behaviour
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Taglist plugin configuration
let Tlist_Auto_Open = 0
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Winmanager plugin configuration
let g:explShowHiddenFiles = 1

" Aliases
" text
cnoreabbrev A FSHere

" Abbreviatures
" Python
iab utf! # -*- coding: utf-8 -*-

" Use a FZF plugin
set rtp+=~/.fzf
