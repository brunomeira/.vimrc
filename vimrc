
set secure exrc " Open vimrc in local directories, this might be a security issue

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
Plugin 'tpope/vim-rake'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
"Plugin 'vim-scripts/AutoComplPop'
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
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-dispatch'
Plugin 'yegappan/greplace'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
call vundle#end()            " required

set shiftwidth=2
set tabstop=2

syntax on
filetype plugin indent on

set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" set foldlevelstart=1

autocmd VimEnter * NERDTree
set number

set t_Co=256
colorscheme vividchalk
set background=dark
set hlsearch
set list
set listchars=tab:>>

" let g:ruby_fold = 1

highlight ColorColumn ctermbg=214
call matchadd('ColorColumn', '\%81v', 100)

" Customized Mappings

nnoremap ; :

"Splits screen in half and opens proper test file -IF class is a model. Check :help rails-alternate-related
nmap <Leader>t :AS<CR>

"Runs tests for active file, if it's a model or test, check :help rails-:Rake
nmap <Leader>T :Rake<CR>

"Toggle tree
nmap <F2> :NERDTreeTabsToggle<CR>

"Move between windows
nmap <F3> :wincmd w<CR>
