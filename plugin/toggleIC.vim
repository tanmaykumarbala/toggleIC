if exists('g:default_toggle_ic_map_key_user')
	let g:default_toggle_ic_map_key = g:default_toggle_ic_map_key_user
else
	let g:default_toggle_ic_map_key = "<leader>i"
endif

""" Function to toogle IC
function ToggleIC()
	if &l:ic == "1"
		set noic
		echo "Ignore case off"
	else
		set ic
		echo "Ignore Case on"
	endif
endfunction

""" Setting the command for easy refrence.
command! -nargs=0 ToggleIgnoreCase :call ToggleIC()

""" Default key maping.
execute 'nnoremap '.g:default_toggle_ic_map_key.' :ToggleIgnoreCase <cr>'
execute 'inoremap '.g:default_toggle_ic_map_key.' <c-i>:ToggleIgnoreCase <cr>'
