"function SetTimeOfDayColors()
"" progressively check higher values... falls out on first true
"" (note addition of zero ... this guarantees return from function is numeric
"	let currentHour = strftime("%H")
"	echo "currentHour is " . currentHour
"	if currentHour < 6 + 0
"		let colorScheme = "darkblue"
"	elseif currentHour < 12 + 0
"		let colorScheme = "morning"
"	elseif currentHour < 18 + 0
"		let colorScheme = "shine"
"	else 
"		let colorScheme = "evening"
"	endif
"	echo "setting color scheme to " . colorScheme
"	execute "colorscheme " . colorScheme
"endfunction

" Another variant of the same function. Please comment out at least one.
" let g:Favcolorschemes = ["darkblue", "morning", "shine", "evening"]
" function SetTimeOfDayColors()
" 	" currentHour will be 0, 1, 2 or 3
" 	let g:CurrentHour = (strftime("%H") + 0) / 6
"	if g:colors_name !~ g:Favcolorschemes[g:CurrentHour]
"		execute "colorscheme " . g:Favcolorschemes[g:CurrentHour]
"		echo "execute " "colorscheme " .
"		g:Favcolorschemes[g:CurrentHour]
"		redraw
"	endif
" endfunction

" call SetTimeOfDayColors()

" Templates
if has("autocmd")
	augroup templates
		autocmd!
		autocmd BufNewFile app.js 0r ~/Templates/nodejs/app.js
		autocmd BufNewFile *.html 0r ~/Templates/html/index.html
		autocmd BufNewFile header.ejs 0r ~/Templates/nodejs/views/partials/header.ejs
		autocmd BufNewFile footer.ejs 0r ~/Templates/nodejs/views/partials/footer.ejs
	augroup END	
endif

"
"	Autocommands
"
autocmd BufRead,BufNewFile *.html,*.html.ep,*.css set shiftwidth=2
autocmd BufRead,BufNewFile *.js,*.ejs set shiftwidth=4
autocmd BufRead,BufNewFile *.c,*.h,*.cpp set shiftwidth=8

" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim/_swap//

" backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,.

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo

" Indentation and tabs
" set cindent
" set tabstop=4
" set shiftwidth=4

" Display and format
set number
set textwidth=80
set background=dark

" Browse and scroll
set scrolloff=5

"-- EMMET CONFIG --
"redefine trigger key
let g:user_emmet_leader_key=','

execute pathogen#infect()
