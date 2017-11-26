runtime macros/matchit.vim
set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

set mouse=nicr
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'vim-ruby/vim-ruby'

Bundle 'altercation/vim-colors-solarized'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'christoomey/vim-tmux-runner'

Plugin 'valloric/MatchTagAlways'

Plugin 'airblade/vim-gitgutter'

Bundle 'kana/vim-textobj-user'

Plugin 'textobj-rubyblock'

Plugin 'rails.vim'

Plugin 'leafgarland/typescript-vim'

Plugin 'ctrlp.vim'

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

set backspace=2
set clipboard+=unnamed
set background=dark
let g:solarized_visability="high"
let g:solarized_contrast="high"
let g:solarized_termtrans = 1
colorscheme solarized

nnoremap <∆> :m .+1<CR>==
nnoremap <˚> :m .-2<CR>==
inoremap <∆> <Esc>:m .+1<CR>==gi
inoremap <˚> <Esc>:m .-2<CR>==gi
vnoremap <∆> :m '>+1<CR>gv=gv
vnoremap <˚> :m '<-2<CR>gv=gv

" for ruby-block-plugin
if has("autocmd")
  filetype indent plugin on
endif

set complete=.,w,b,u,t,i,kspell
