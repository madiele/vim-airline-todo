scriptencoding utf-8

let s:todo_directory_tmp = expand('%:p:h')
let s:todo_directory = expand(s:todo_directory_tmp)
let s:remind = exists('g:todo#remind') ? g:todo#remind : 'TODO'
let s:todo_recurse = exists('g:todo#recurse') ? g:todo#recurse : 0
let s:todo_suffix = exists('g:todo#suffix') ? g:todo#suffix : '*'
let s:count = 0


fun! todo#countF()
	redir => cnt
	silent exe '%s/' . s:remind . '//n'
	redir END
	let s:count = matchstr( cnt, '\d\+' )
endf

function! s:Filecount()
	return s:count
endfunction

function! todo#listtask() abort
    let n = s:Filecount()
	if n == 0
		return ""
	endif
    return printf("%s[%d]", s:remind, n)
endfunction

:autocmd TextChanged,InsertLeave * call todo#countF()

"map <leader>t :exec "NERDTree " . s:todo_directory<cr>
