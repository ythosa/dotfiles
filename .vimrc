set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }


" All of your Plugins must be added before the following line
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
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Russian keyboard
set keymap=russian-jcukenmac
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan


" Tabs settings for Python
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab " Tabs using spaces
set softtabstop=4 " 4 spaces in tab
set autoindent
let python_highlight_all = 1
let go_highlight_all = 1
" Turning on 256 colours support in terminal, needed for a lot of 
" terminals such as gnome-terminal
set t_Co=256

" Before saving we cut the spaces at the ends (only for .py files)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" Turning on smart margins after keywords (only for .py files)
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on "Turning on syntax highlighting

set nu "Turning on line numbers
set mousehide "Hide mice coursour while typing a text
set mouse=a "Turning on mouse support
set termencoding=utf-8 "Terminal encoding
set novisualbell "Don't blink 
set t_vb= "Don't beep! (Unfortunately, there is no 'do not spoil the text' option)
set backspace=indent,eol,start whichwrap+=<,>,[,] "Comfortable behaviour for backspace
set showtabline=1 "Turning off dashes on tabs

" Transfer to the another line and break the lines
set wrap
set linebreak

" Turning off .swp and ~ (backup) files
set nobackup
set noswapfile
set encoding=utf-8 " Default file encoding
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Turning off sound in Vim
set visualbell t_vb=

" Switching tabs by CMD+number for MacVim
if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

set guifont=Monaco:h18
set termguicolors
colorscheme embark
