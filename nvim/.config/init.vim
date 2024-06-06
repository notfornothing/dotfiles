" Create By JackSparrow"
" set good ,get vim"
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set guifont=Consolas:h14

""""""""""""""""""""""""""""""" vim-plug 插件的配置文件"""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
" 注释
" Plug 'preservim/nerdcommenter'

" dracula 主题
Plug 'dracula/vim', { 'as': 'dracula' }

" s{char}{char}
Plug 'justinmk/vim-sneak'

" airline 下边状态栏，上边状态栏需要设置一下 =1 的命令
" let g:airline#extensions#tabline#enabled = 1
Plug 'vim-airline/vim-airline'

" airline_theme 状态栏颜色我用
" let g:airline_theme='deus'
Plug 'vim-airline/vim-airline-themes'

Plug 'ojroques/vim-oscyank', {'branch': 'main'}

" 高亮复制显示
Plug 'machakann/vim-highlightedyank'

" 环绕字符编辑
Plug 'tpope/vim-surround'

" 参数文本对象
Plug 'https://github.com/vim-scripts/argtextobj.vim.git'

" 当前行高亮
Plug 'https://github.com/itchyny/vim-cursorword.git'

Plug 'preservim/nerdtree'

" undotree
Plug 'mbbill/undotree'

" 回车选中块
Plug 'gcmt/wildfire.vim'

" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" 文字和数字加空格
" Plug 'https://github.com/hotoo/pangu.vim.git'

" markdown 链接
" Plug 'vimwiki/vimwiki'

" markdown 目录
" Plug 'mzlogin/vim-markdown-toc'

" 多光标
" Plug 'terryma/vim-multiple-cursors'

call plug#end()
""""""""""""""""""""""""""""""""""""""vim-plug 结束""""""""""""""""""""""""""""""""""""""""

" 设置 leader 为空格"
let mapleader=" "
" set mouseBehavior
set mouse=a
" 设置相对行号"
set rnu
" 设置行号
set nu
"设置高亮"
set hlsearch
" 自动定位到输入中的字符串，不需要回车搜索
set incsearch
" 取消搜索后的高亮"
nnoremap <silent> <Esc> :nohlsearch<CR>
set clipboard+=unnamed
" 自动忽略大小写
set ignorecase smartcase

" redo"
nnoremap U <C-r>

" 左右标签栏
nnoremap <leader>l :bn!<CR>
nnoremap <leader>h :bp!<CR>


" 上下移动且保持居中"
" 光标移动实际行与屏幕行

" 快速跳转
vnoremap J 3jzz
vnoremap K 3kzz
nnoremap J 3jzz
nnoremap K 3kzz

nnoremap G Gzz

nnoremap k gkzz
nnoremap j gjzz
vnoremap k gkzz
vnoremap j gjzz
nnoremap gk kzz
nnoremap gj jzz
vnoremap gk gkzz
vnoremap gj gjzz

" 快捷屏幕行左右
vnoremap L g$h
vnoremap H g^
nnoremap L g$
nnoremap H g^

" 查找
nnoremap <C-f> /
inoremap <C-f> <ESC>/


" 普通模式实现移动行
" 未实现
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp

" 块选择和粘贴
" 未实现
nnoremap <C-S-v> <C-v>
nnoremap <C-v> p

" gi居中
nnoremap gi gi<ESC>zza

" Vim 搜索结果居中展示
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" 括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" gv 命令可以用于重新选取上一次由可视模式所选择的文本范围
vnoremap < <gv
vnoremap > >gv

" 主题 dracula
colorscheme dracula
" 字体


set nobackup
set noswapfile
set ts=4
set expandtab
set autoindent

" 保存
nmap <Leader>s :w<CR>
" 保存
" nmap <C-s> :w!<CR>
" 保存并且退出标签栏
nnoremap <S-z>Z :wq!<CR>
" 保存并且退出窗口
nnoremap <Leader>q :wq!<Cr>


" airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

"highlightedyank
let g:highlightedyank_highlight_duration = 400

" <leader>rc 加载 vimrc
nnoremap <leader>rc :e ~/.config/nvim/init.vim<CR>
" <leader>rs 重新加载 vimrc
nnoremap <leader>rs :source ~/.config/nvim/init.vim<CR>

" 设置光标当前行高亮
set cursorline

filetype on

" markdown-preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0


" undoTree
nnoremap <A-2> :UndotreeToggle<CR>


" OSC 就是跨ssh可以复制的
nmap <leader>c <Plug>OSCYankOperator
nmap <leader>cc <leader>c_
vmap <leader>c <Plug>OSCYankVisual

nnoremap <C-n> :NERDTree<CR>
nnoremap <A-1> :NERDTreeToggle<CR>
nnoremap <C-M-1> :NERDTreeFind<CR>
nnoremap <C-A-2> :NERDTreeFind<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" wildfire.vim
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map ; <Plug>Sneak_;zz
map , <Plug>Sneak_,zz

"
let g:sneak#use_ic_scs = 1


