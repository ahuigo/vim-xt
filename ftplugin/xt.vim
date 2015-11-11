setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)

function! GetPotionFold(lnum)
	return match(getline(a:lnum)[33:], '->') / 2
endfunction
