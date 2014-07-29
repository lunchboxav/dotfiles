set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

execute pathogen#infect()
syntax on
filetype on
filetype plugin on
filetype indent on

" Tilde removal
:hi NonText guifg = bg

" Some settings to enable the theme:
set number
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" distraction-free
"let g:fullscreen_colorscheme = "iawriter"
"let g:fullscreen_font = "Cousine:h14"
"let g:normal_colorscheme = "codeschool"
"let g:normal_font="Inconsolata:h14"

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" markdown
let g:vim_markdown_folding_disabled=1
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown :setlocal nonumber cc=""

" NERDTree
map <C-t> :NERDTreeToggle<CR>

" Goyo and zenroom2
nnoremap <silent> <leader>z :Goyo<cr>
