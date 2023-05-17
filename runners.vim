let g:code_runners = {
	\ 	'c': 'clang $in -o /tmp/a.out -lm && /tmp/a.out $arg',
	\ 	'cpp': 'clang++ -std=c++20 $in -o /tmp/a.out && /tmp/a.out $arg',
	\ 	'typescript': 'ts-node $in',
	\ 	'javascript': 'node $in',
	\ 	'haskell': 'runhaskell $in',
	\	'java': 'java $in',
	\	'rust': 'rust-script $in',
	\	'python': 'python $in'
	\ }

fun! RunFile(...)
	let ft = &ft

	if !has_key(g:code_runners, ft)
		echoerr "No runner for the current filetype"
	else
		let a1 = substitute(g:code_runners[ft], "$in", shellescape(@%, 1), "")
		let a2 = substitute(a1, "$arg", shellescape(join(a:000, " "), 1), "")
		:execute 'AsyncRun -mode=term -pos=bottom' a2
	endif
endfun

command! RunFile :call RunFile(<f-args>)
