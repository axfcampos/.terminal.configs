set nocompatible              " be iMproved, required
" filetype off                  " required
filetype on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
if has("autocmd")
    filetype indent plugin on
endif
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ryanss/vim-hackernews'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/gist-vim'
Plugin 'tommcdo/vim-lion'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'matchit.zip'
Plugin 'tpope/vim-endwise'

" All of your Plugins must be added before the following line
call vundle#end()            " required

runtime macros/matchit.vim " required by matchit
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

syntax on
set background=dark
set number
set encoding=utf-8
set shiftwidth=2
set tabstop=2
set expandtab
set gdefault " make g default option when searching"
set virtualedit=all " frees the cursor move, it forced it to go to certain parts of the line
set backspace=indent,eol,start

" Disable comments falling to a new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Ignore case when searching
set ignorecase

" Highlight search things
set hlsearch

" VIM-AIRLINE
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:tmuxline_powerline_separators = 0
let g:tmuxline_theme = 'iceberg'
set timeoutlen=50 " fixes delay when switching modes

" Solarized
" let g:solarized_termcolors=256
colorscheme solarized

" split brackets by a line {} to {\n\n}
imap <C-c> <CR><Esc>O

" Show 80 character column
set colorcolumn=80
highlight ColorColumn guibg=darkgray

"Show redundant white spaces
highlight ExtraWhitespace ctermbg=darkred guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Show hidden stuff
" invisibles
set listchars=tab:▸\ ,eol:¬,nbsp:☠
set list

" Path to ag
let g:agprg="/usr/local/bin/ag --column"

" Turn on and toggle NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

