" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'sheerun/vim-polyglot'
Plugin 'elzr/vim-json'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" You have to set terminal font manually.
if has('gui_running')
  set guifont=Fira\ Mono:h12
endif

set background=dark
colorscheme gruvbox

set backspace=indent,eol,start
set nocompatible              " be iMproved, required
filetype off                  " required
set number
set laststatus=2
syntax on
set cursorline
set cursorcolumn

set smartindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'   " hit right arrow to open a node
let NERDTreeShowHidden=1                " show hidden files
nmap <C-j> :NERDTreeFind<CR>
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1

nmap <F8> :TagbarToggle<CR>
"nnoremap <C-s> :w!<CR>
"inoremap <C-s> <ESC>:w!<CR>
"vnoremap <C-s> <ESC>:w!<CR>

let g:airline#extensions#tabline#enabled = 1

func! WordProcessorMode()
  setlocal smartindent
  setlocal spell spelllang=en_us
  setlocal noexpandtab
endfu

com! WP call WordProcessorMode()

"remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"highlight searching words
set hlsearch

"show matching parenthesis
set showmatch

let g:gitgutter_sign_column_always=1    " Show git gutter always

" Multicursor settings
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntatstic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
