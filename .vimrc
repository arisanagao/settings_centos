colorscheme ron
set number
set encoding=utf-8

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
