filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1

" ---- Python syntax
Plugin 'hdima/python-syntax'
let python_highlight_all = 1
" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
let g:clang_library_path='/usr/x86_64-linux-gnu/libclang-3.8.so.1'

 " ---- C language autocompletion
Plugin 'rip-rip/clang_complete'
Plugin 'c.vim'
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

Plugin 'valloric/youcompleteme'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
Plugin 'jez/vim-superman'
Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'lokaltog/vim-powerline'

" ---- Extras/Advanced plugins ----------------------------------------
" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'
" Make tmux look like vim-airline (read README for extra instructions)
Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I use
"Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-liquid'
"Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on


" ----- bling/vim-airline settings -----
" Always show statusbar
" set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set guifont=DejaVu\ Sans:s12


" colorscheme solarized
set laststatus=2
set term=xterm-256color
set t_Co=256
set termencoding=utf-8
set guifont=Ubuntu\ solarized\ derivative\ Powerline:10
"set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'


nmap <F8> :TagbarToggle<CR>
"set shell=bash\ --login

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set cursorline
" set cursorcolumn
syntax on
set mouse=a
set smartindent
set autoindent
"set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" ----- Plugin-Specific Settings --------------------------------------
" ----- altercation/vim-colors-solarized settings -----
"" Toggle this to "light" for light colorscheme
set background=light


" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256
" let g:airline_theme='badcat'
" Set the colorscheme
"
" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
"map <Leader>n <plug>NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'   " hit right arrow to open a node
let NERDTreeShowHidden=0                " show hidden files
nmap <C-j> :NERDTreeFind<CR>
let NERDTreeMouseMode=2

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

:color desert
let g:nerdtree_tabs_open_on_console_startup=1

highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace / \+$/

autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=darkred
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=darkred


colorscheme molokai

let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_auto_trigger = 1

set omnifunc=syntaxcomplete#Complete

"set foldmethod=indent
"set foldlevel=1
"set foldclose=all
set nofoldenable    " disable folding

let g:ycm_path_to_python_interpreter='/usr/bin/python2.7'

" syntatstic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1

" functions
" Source Compile
func! Compile()
    if &filetype == 'c'
        exec "!cc % -o %<"
    elseif &filetype == 'java'
        exec "!javac -g %"
    endif
endfunc
map <F5> :call Compile()<CR>

func! Run()
    if &filetype == "java"
        exec "!time java -cp %:p:h %:t:r"
    endi
endfunc
map <F6> :call Run()<CR>

fun! Debug()
    if &filetype == 'java'
        exec "!jdb %:t:r"
    endif
endfunc
map <F7> :call Debug()<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
