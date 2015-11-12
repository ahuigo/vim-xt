setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)

function! GetPotionFold(lnum)
	return match(getline(a:lnum)[33:], '->') / 2
endfunction

nnoremap <buffer> <c-k> zk
nnoremap <buffer> <c-j> zj
set cul cuc
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
