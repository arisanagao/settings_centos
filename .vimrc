colorscheme ron
set number
set encoding=utf-8
set expandtab
set tabstop=2
"set shiftwidth=2
set smartindent
set pastetoggle=<F2>

augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

function! s:remove_dust()
  let cursor = getpos(".")

  " 保存時に行末の空白を除去する
  %s/\s\+$//ge

  " 保存時に空行の空白を除去する
  %s/^\+$//ge

  call setpos(".", cursor)
  unlet cursor
endfunction

autocmd BufWritePre * call <SID>remove_dust()
autocmd InsertEnter * set nohlsearch

" F10:行番号表示／非表示
nnoremap <F10> :<C-u>setlocal number!<CR>
inoremap <F10> <Esc>:<C-u>setlocal number!<CR><Insert>

" if has('vim_starting')
"   set nocompatible               " Be iMproved
"
"   " Required:
"   set runtimepath+=~/.vim/bundle/neobundle.vim/
" endif
"
" " Required:
" call neobundle#begin(expand('~/.vim/bundle/'))
"
" " Let NeoBundle manage NeoBundle
" " Required:
" NeoBundleFetch 'Shougo/neobundle.vim'
"
" " My Bundles here:
" NeoBundle 'scrooloose/nerdtree'
"
" " You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
"
" call neobundle#end()
"
" " Required:
" filetype plugin indent on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
" NeoBundleCheck
"
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
