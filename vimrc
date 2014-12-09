" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" setup VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required
 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-bundler'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'sandeepravi/refactor-rails.vim'

call vundle#end()            " required

set expandtab
set shiftwidth=4
set softtabstop=4
filetype plugin indent on    " required

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

autocmd VimEnter * NERDTree
set number

set t_Co=256
colorscheme vividchalk
set background=dark
set hlsearch


" Customized Mappings

"Splits screen in half and opens proper test file -IF class is a model. Check :help rails-alternate-related
nmap <Leader>t :AS<CR>

"Runs tests for active file, if it's a model or test, check :help rails-:Rake
nmap <Leader>T :Rake<CR>

"Toggle tree
nmap <F2> :NERDTreeTabsToggle<CR>

"Move between windows
nmap <F3> :wincmd w<CR>

