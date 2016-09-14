" Voudle Setting start "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
"
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
" snipmate Setting start "
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets.git'
" snipmate Setting end "
Plugin 'kien/ctrlp.vim.git'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'


Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
"git plugin start"
Plugin 'tpope/vim-fugitive'
"git plugin end"

"YouComleteMe start"
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'

set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1                           " 啟用语法检查
"let g:ycm_min_num_of_chars_for_completion=2                 "
"从第2个键入字符就开始罗列匹配项

Plugin 'dkprice/vim-easygrep'
"-----EasyGrep-----
let EasyGrepMode = 2        "根據文件類型搜索相應文件
let EasyGrepRecursive = 1   "遞歸搜索
let EasyGrepCommand = 1     "使用grep
let EasyGrepJumpToMatch = 0 "不要跳轉


Plugin 'mileszs/ack.vim'

"YouComleteMe end"

"Plugin 'winmanager' "windows manager

" Voudle Setting end"

" Tagbar Setting start"
nmap <F1> :TagbarToggle<CR>
let g:tagbar_left=1
" Tagbar Setting end"

"NERD Setting start"
nmap <F12> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"
"NERD Setting end"

"using mouse control"
" set mouse=a
set mouse=nv

" vim-airline Setting start"
" set status line
set laststatus=2 
" enable powerline-fonts
let g:airline_powerline_fonts = 1
set t_Co=256
let g:airline_theme='wombat'

set tags=tags;

"----------------
""" 編輯器基本設定
"----------------
"
" 設置（軟）製表符寬度為4：
set hlsearch
set tabstop=4
set softtabstop=4
" 默認顯示行號
set nu
" 設置 使用 C/C++ 語言的自動縮進方式：
set cindent
"搜索的時候即時顯示結果
set incsearch
" 禁止循環查找
set nowrapscan

" enable tabline
" let g:airline#extensions#tabline#enabled = 1"
" let g:airline_theme='wombat'"
" set left separator
" let g:airline#extensions#tabline#left_sep = ' '"
" set left separator which are not editting
" let g:airline#extensions#tabline#left_alt_sep = '|'"
" show buffer number
" let g:airline#extensions#tabline#buffer_nr_show = 1"
" vim-airline Setting end"
