if exists("g:neovide")
    let g:neovide_refresh_rate=165
    let g:neovide_transparency=1
    let g:neovide_profiler = v:false
endif

let g:python3_host_prog = 'C:\Install\Python310\python.exe'
let g:python_host_prog  = 'C:\Install\Python27\python.exe'
""""""""""""""""""""""""""""""" vim-plug 插件的配置文件"""""""""""""""""""""""
call plug#begin('~/AppData/Local/nvim/plugged')
" 切换中文英文，貌似没用
Plug 'lilydjwg/fcitx.vim'

Plug 'dhruvasagar/vim-table-mode'
" 首页的啥
Plug 'mhinz/vim-startify'
" 启动时间
Plug 'dstein64/vim-startuptime'
" 选择全部
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
"
Plug 'gcmt/wildfire.vim'

" s{char}{char}
Plug 'justinmk/vim-sneak'

" 空格缩进线
Plug 'Yggdroot/indentLine'
" 注释
Plug 'preservim/nerdcommenter'

Plug 'preservim/nerdtree'

" vim 标记 bookmark
" Plug 'https://github.com/kshenoy/vim-signature'

" dracula 主题
Plug 'dracula/vim', { 'as': 'dracula' }

let g:airline#extensions#tabline#enabled = 1
Plug 'vim-airline/vim-airline'

" airline_theme 状态栏颜色我用
" let g:airline_theme='deus'
Plug 'vim-airline/vim-airline-themes'

" 文件快速搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" 高亮复制显示
Plug 'machakann/vim-highlightedyank'

" 环绕字符编辑
Plug 'tpope/vim-surround'

" 参数文本对象
Plug 'https://github.com/vim-scripts/argtextobj.vim.git'

" 交换插件
Plug 'https://github.com/tommcdo/vim-exchange.git'

" 当前字母高亮
Plug 'https://github.com/itchyny/vim-cursorword.git'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" markdown 目录
Plug 'mzlogin/vim-markdown-toc'

" undotree
Plug 'mbbill/undotree'

"auto save
call plug#end()
""""""""""""""""""""""""""""""""""""""vim-plug 结束""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <leader>q o<C-r>=strftime("%H`%M`%S %Y-%m-%d")<CR>.<Esc>xF`r.;.dd:w ~/Desktop/<C-r>+.md<CR>
nnoremap <silent> <leader>o :tabnew<CR>i<C-r>=strftime("%H`%M`%S %Y-%m-%d")<CR>・<Esc>xF`r.;.dd:w ~/Desktop/<C-r>+.md<CR>
nnoremap <silent> <leader>r :<CR>i<C-r>=strftime("%H`%M`%S %Y-%m-%d")<CR>・<Esc>xF`r.;.dd:w ~/Desktop/<C-r>+.md<CR>

" By default timeoutlen is 1000 ms
set timeoutlen=500

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
" 自动忽略大小写
set ignorecase smartcase

" redo"
nnoremap <C-r> <Nop>

nnoremap U <C-r>

" 预留 10 行 scroll offset"
" set scrolloff=10

" 左右标签栏
nnoremap <silent> <leader>l :bn!<CR>
nnoremap <silent>  <leader>h :bp!<CR>


" 上下移动且保持居中"
" 光标移动实际行与屏幕行
"
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


" 原始命令 gj 就是屏幕行向下，j 命令就是实际行向下，所以为了操作方便换一下。其他的不换是因为看着容易乱，这里只是做一下解释，因为大部分还是屏幕行用的多，不过行数跳转需要注意就是
" 下面可以用来做测试
" 与许多文本编辑器不同，Vim 会区分实际行与屏幕行。当 Vim 的 wrap 设置被启用时（缺省启用），每个超出窗口宽度的文本行都会被回绕显示（自动换行），来保证所有文本都能在当前窗口中完整展示出来。"因此，文件中的一行可能会被显示为屏幕上的若干行，从而出现了 Vim 实际行与屏幕行的差异。

" 查找
nnoremap <C-f> /
inoremap <C-f> <ESC>/

" 普通模式实现移动行
" 未实现
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp


" gi 居中
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
set clipboard=unnamed

set ts=4
set expandtab
set autoindent

" 关闭 visual bell
set visualbell t_vb=
" 关闭 beep
au GuiEnter * set t_vb=

" 保存
nmap <Leader>s :w<CR>

" 保存并且退出标签栏
nnoremap <S-z>Z :w!<CR>:bd!<CR>

" like Windows
vnoremap <C-c> y
nnoremap <C-c> yy
inoremap <C-c> <Esc>yy

" 块选择和粘贴
nnoremap <C-S-v> p

nnoremap <C-z> u
inoremap <C-z> <Esc>u

nnoremap <C-S-z> <C-r>
inoremap <C-S-z> <Esc><C-r>


" airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

"highlightedyank
let g:highlightedyank_highlight_duration = 400

"" <leader>rc 加载 vimrc
"nnoremap <leader>rc :e $HOME\AppData\Local\nvim\init.vim<CR>
"" <leader>rs 重新加载 vimrc
"nnoremap <leader>rs :source $HOME/AppData/Local/nvim/init.vim<CR>

" <leader>rc 加载 vimrc
nnoremap <leader>rc :e $HOME/.config/nvim/init.vim<CR>
" <leader>rs 重新加载 vimrc
nnoremap <leader>rs :source $HOME/.config/nvim/init.vim<CR>



"cWith this option set, v will match both v and V, but V will match V only. Default: 0.
let g:EasyMotion_smartcase = 1

" 设置光标当前行高亮
set cursorline

filetype on

" markdown-preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0


nnoremap <leader>m :MarkdownPreview<CR>

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0



map f <Plug>Sneak_f
map F <Plug>Sneak_F
map ; <Plug>Sneak_;zz
map , <Plug>Sneak_,zz


"
let g:sneak#use_ic_scs = 1


" fzf
nnoremap <C-e> :FZF C:/<CR>
nnoremap <C-S-E> :FZF ~<CR>


" vim-markdown-toc
" 默认 * 号 变成 - + 号 源码可读性提高,markdown样式是不会变的
let g:vmt_cycle_list_item_markers = 1



" wildfire.vim
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]

nnoremap Q :q!<CR>

" vim-table-mode
let b:table_mode_corner='|'

"nnoremap <C-n> :NERDTree<CR>
nnoremap <D-1> :NERDTreeToggle<CR>
"nnoremap <C-M-1> :NERDTreeFind<CR>
"nnoremap <C-A-2> :NERDTreeFind<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" undoTree
" 应该是终端啥的冲突了，按不出来，也不太需要，就一个编辑器，别深究了
" nnoremap <D-2> :UndotreeToggle<CR>
" nnoremap <C-5> :UndotreeToggle<CR>
