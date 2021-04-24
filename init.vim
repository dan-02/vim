"快捷键=========================
inoremap jj <ESC>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
"=================================

"缩进====================================
set autoindent "按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set tabstop=4 "按下 Tab 键时，Vim 显示的空格数
set shiftwidth=4 "按下>>、<<或==（取消全部缩进）时，每一级的字符数
set expandtab "由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set softtabstop=4 "Tab 转为多少个空格
"=========================================

set nu "显示行号

"leader键
let mapleader=" "

" 语法高亮
syntax on

"光标所在的当前行高亮
set cursorline

"自动折行
set wrap

"补全vim命令
set wildmenu

"搜索==========================
set hlsearch "搜索高亮
set incsearch "边输入搜索边高亮
set ignorecase "忽略大小写
set smartcase "智能大小写
"============================

"vim-plug=======================================
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
call plug#end()
"=============================================

"配色
color gruvbox

"状态栏配置===========================
set laststatus=2 "总是显示状态栏
set showmode "在底部显示当前模式
set showcmd "在底部显示当前键入的指令
"======================================

"设置编码=======================
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
"===============================


"打开文件类型检测
filetype plugin indent on


"新打开文件，光标在上次打开的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
