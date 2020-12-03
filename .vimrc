"================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
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
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'tpope/vim-surround'

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
"================================================================

"Установка default цветовой схемы
 colorscheme colorful256

"Настройка табов по реккомендациям Python
 set tabstop=4
 set shiftwidth=4
 set smarttab
 set expandtab "ставим табы пробелами
 set softtabstop=4 "4 пробела в табе

"Включим автоотступы для новых строк
 set autoindent

"Переносить длинные строки
 set wrap
 set linebreak "разрываем строки

"Подсвечиваем все, что можно подсветить
 syntax on "подсветка синтаксиса
 let python_highlight_all=1
"Включаем 256 цветов в терминале. Это нужно во многих терминалах (например в gnome-terminal).
 set t_Co=256
"Включим нумерацию строк
 set number
"Прячем курсор мыши когда набираем текст
 set mousehide
"Включаем поддержку мыши
 set mouse=a 
"Устанавливаем кодировку терминала в utf-8
 set termencoding=utf-8
"Курсор не мигает
 set novisualbell

 set t_vb= "Не пищать
 set visualbell t_vb= "выключаем звук в vim

"Вырубаем swp и резервные файлы
 set nobackup
 set noswapfile

 set clipboard=unnamed
"Строка состояния
 set wildmenu
 set laststatus=2
 set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

"Порядок применения кодировок и формата файлов
 set encoding=utf-8 "кодировка файлов по умолчанию
 set fileencodings=utf-8,cp1251,koi8-r,ucs-2,cp866

 set hidden
 nnoremap <C-N> :bnext<CR>
 nnoremap <C-P> :bprev<CR>

 set guifont=Monaco:h18
 
 let &t_SI="\<Esc>[6 q"
 let &t_SR="\<Esc>[4 q"
 let &t_EI="\<Esc>[2 q"

"=================================================================
"Настроим поиск и подсветку результатов поиска и совпадения скобок
"show matching brackets
 set showmatch
"high light search result
 set hlsearch
"Live search: while typing a search command, show where the pattern
 set incsearch
"ignorecase in search pattern
 set ignorecase
"=================================================================
