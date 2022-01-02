function! _put_your_comment_here()

文档 帮助
                (nothing) In a function: local to a function; otherwise: global
global-variable    g:     Global.
script-variable    s:     Local to a :source'ed Vim script.

buffer-variable    b:     Local to the current buffer.
window-variable    w:     Local to the current window.
tabpage-variable   t:     Local to the current tab page.
local-variable     l:     Local to a function.
function-argument  a:     Function argument (only inside a function).
vim-variable       v:     Global, predefined by Vim.

echo fnamemodify(expand('<sfile>:p'), ':h').'/main.vim'
得到 ~/.Spacevim/main.vim
https://stackoverflow.com/questions/4976776/how-to-get-path-to-the-current-vimscript-being-executed/18734557

回车 <CR>

/<pattern>    Searches forward for a pattern
?<pattern>    Searches backward for a pattern

" Line breaks can be escaped by pacing a backslash as the first non-whitespace
" character on the following line. Only works in script files, not on the command line

" echo " Hello
    " \ world "
    "
endfunction 

