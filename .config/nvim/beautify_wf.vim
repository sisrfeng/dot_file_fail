
" [[---------------------------------------Theme Settings    主题设置



source ~/dot_file/.config/nvim/lucius.vim
set background=light
if !exists('g:vscode')
    colorscheme lucius
    LuciusLight
    " LuciusWhite
endif

" if &diff
    " hi DiffAdd    guifg=#003300 guibg=#DDFFDD gui=none
    " hi DiffChange guibg=#ececec gui=none
    " hi DiffText   guifg=#000033 guibg=#DDDDFF gui=none
" endif

autocmd BufWritePost * if &diff == 1 | diffupdate | endif


set cursorline
" 很浅的绿色
hi CursorLine guibg=#e3efe3
" hi Cursor guibg=#0000cc  " 似乎被mobaxterm控制着

" 古老：For terminal Vim, with colors, we're most interested in the cterm
" 支持真彩色 true color
set termguicolors   " true (24-bit) colours. 下面改颜色只用改 guibg guifg
hi Search guibg=#afafef guifg=#00aeae  " 放文件前部分不行


" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1  " 被下面的代替了
" mobaxterm里insert mode还是方块。vscode里是正常的
set guicursor=n-v-c:block,
            \i-ci-ve:ver25,
            \r-cr:hor20,
            \o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

syntax enable


highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline 
highlight OperatorSandwichChange guifg='#edc41f' gui=underline 
highlight OperatorSandwichAdd guibg='#b1fa87' gui=none 
highlight OperatorSandwichDelete guibg='#cf5963' gui=none 


" 防止tmux下vim的背景色显示异常
" http://sunaku.github.io/vim-256color-bce.html
if &term =~ '256color'
    set t_ut=
endif
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.




" Todo
" 设置可以高亮的关键字
if has("autocmd")
    " Highlight TODO, FIXME, NOTE, etc.
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(todo\|FIXME\|CHANGED\|DONE\|Todo\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
endif


" 不加bold时，背景前景会 对调
hi StatusLine     gui=bold guibg=#a4e4e4 guifg=#004040
hi StatusLineNC   gui=bold guibg=#e0f0f0 guifg=#0099a0

" todo printf style '%' items interspersed with  normal text.
" Each status line item is of the form:
"       %-0{minwid}.{maxwid}{item}
"     All fields except the {item} are optional.
" 在上面的基础上：  (几表示某个highlight设置)
" %几*某内容%*

" %=   右对齐
" %r  readonly, 显示 [RO]
set statusline=%=%r
set statusline=%=%t
set statusline +=%=缓存:%n\                   "buffer number
set statusline +=%=%m                         "modified flag
set statusline +=%=文件格式:%{&ff}            "是否unix
set statusline +=%=\ %h
" flag [Preview]
set statusline +=%=\ %w
set statusline +=%=\ %k
set statusline +=%=\ %q
set statusline +=%999X
set statusline +=%=第%l行(%p%%)\ %v列         "virtual column number (screen column)
set statusline +=
" set statusline +=\ %c                        " Column number (byte index).
" set statusline +=/%L行                       "total lines
" set statusline +=\ 0x%B\                     "character under cursor

" 每行超过 n 个字的时候 , vim 自动加上换行符
set textwidth=100


" 不加bold时，背景前景会 对调
hi StatusLine     gui=bold guibg=#a4e4e4 guifg=#004040
hi StatusLineNC   gui=bold guibg=#e0f0f0 guifg=#0099a0


set laststatus=1  " only if there are at least two windows


highlight Search guibg='#dffefa' gui=none 


