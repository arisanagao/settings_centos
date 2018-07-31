colorscheme ron
set number
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

autocmd BufWritePre * :%s/\s\+$//ge "行末の空白を削除"
autocmd BufWritePre * :%s/^\+$//ge  "空白のみの行の空白を削除"
