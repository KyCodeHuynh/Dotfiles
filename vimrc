"Ky-Cuong Huynh's Vim dotfile. Vim is the ultimate text editor!

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set splitbelow
set splitright
set ruler
syntax on
colorscheme elflord

" Enable scrolling with trackpad in iTerm
set mouse=a

if has("gui_running")
        syntax on 
    colorscheme evening 
    set bs=2
    set number
endif

" Faster than Escape
:imap jk <Esc> 
" Quickly clear search highlighting
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Used for Pathogen's auto-loading of Vim plugins 
call pathogen#infect()

if has ("autocmd")
    " File type detection. Indent based on filetype. Recommended.
    filetype plugin indent on
endif

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Fix errors with viewer not being properly set for OS X
" There's apparently with a problem with the code meant to detect
" environment with MacVim
let g:Tex_ViewRule_pdf = 'open -a Preview.app' 

" automatically change directory to open file 
set autochdir

" Auto-completion for Python
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Extend vim-markdown support to LaTeX math
let g:vim_markdown_math=1

