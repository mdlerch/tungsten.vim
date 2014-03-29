" vim color theme: tungsten

" functions copied from desert256 theme

" theme colors
let s:light1 = "e4e4e4"
let s:light2 = "d0d0d0"
let s:light3 = "949494"
let s:dark1 = "444444"
let s:dark2 = "303030"
let s:dark3 = "262626"
let s:dark4 = "1c1c1c"
let s:green1 = "5fd75f"
let s:green2 = "5f875f"
let s:green3 = "87ffaf"
let s:blue1 = "87afd7"
let s:blue2 = "87afaf"
let s:purple1 = "af8787"
let s:yellow1 = "dfdf87"
let s:red1 = "af5f5f"
let s:red2 = "d70000"
let s:orange1 = "dfaf5f"


set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "tungsten"

" {{{2 functions to convert hex to 256, 88
" returns an approximate grey index for the given grey level
fun <SID>grey_number(x)
	if &t_Co == 88
		if a:x < 23
			return 0
		elseif a:x < 69
			return 1
		elseif a:x < 103
			return 2
		elseif a:x < 127
			return 3
		elseif a:x < 150
			return 4
		elseif a:x < 173
			return 5
		elseif a:x < 196
			return 6
		elseif a:x < 219
			return 7
		elseif a:x < 243
			return 8
		else
			return 9
		endif
	else
		if a:x < 14
			return 0
		else
			let l:n = (a:x - 8) / 10
			let l:m = (a:x - 8) % 10
			if l:m < 5
				return l:n
			else
				return l:n + 1
			endif
		endif
	endif
endfun

" returns the actual grey level represented by the grey index
fun <SID>grey_level(n)
	if &t_Co == 88
		if a:n == 0
			return 0
		elseif a:n == 1
			return 46
		elseif a:n == 2
			return 92
		elseif a:n == 3
			return 115
		elseif a:n == 4
			return 139
		elseif a:n == 5
			return 162
		elseif a:n == 6
			return 185
		elseif a:n == 7
			return 208
		elseif a:n == 8
			return 231
		else
			return 255
		endif
	else
		if a:n == 0
			return 0
		else
			return 8 + (a:n * 10)
		endif
	endif
endfun

" returns the palette index for the given grey index
fun <SID>grey_color(n)
	if &t_Co == 88
		if a:n == 0
			return 16
		elseif a:n == 9
			return 79
		else
			return 79 + a:n
		endif
	else
		if a:n == 0
			return 16
		elseif a:n == 25
			return 231
		else
			return 231 + a:n
		endif
	endif
endfun

" returns an approximate color index for the given color level
fun <SID>rgb_number(x)
	if &t_Co == 88
		if a:x < 69
			return 0
		elseif a:x < 172
			return 1
		elseif a:x < 230
			return 2
		else
			return 3
		endif
	else
		if a:x < 75
			return 0
		else
			let l:n = (a:x - 55) / 40
			let l:m = (a:x - 55) % 40
			if l:m < 20
				return l:n
			else
				return l:n + 1
			endif
		endif
	endif
endfun

" returns the actual color level for the given color index
fun <SID>rgb_level(n)
	if &t_Co == 88
		if a:n == 0
			return 0
		elseif a:n == 1
			return 139
		elseif a:n == 2
			return 205
		else
			return 255
		endif
	else
		if a:n == 0
			return 0
		else
			return 55 + (a:n * 40)
		endif
	endif
endfun

" returns the palette index for the given R/G/B color indices
fun <SID>rgb_color(x, y, z)
	if &t_Co == 88
		return 16 + (a:x * 16) + (a:y * 4) + a:z
	else
		return 16 + (a:x * 36) + (a:y * 6) + a:z
	endif
endfun

" returns the palette index to approximate the given R/G/B color levels
fun <SID>color(r, g, b)
	" get the closest grey
	let l:gx = <SID>grey_number(a:r)
	let l:gy = <SID>grey_number(a:g)
	let l:gz = <SID>grey_number(a:b)

	" get the closest color
	let l:x = <SID>rgb_number(a:r)
	let l:y = <SID>rgb_number(a:g)
	let l:z = <SID>rgb_number(a:b)

	if l:gx == l:gy && l:gy == l:gz
		" there are two possibilities
		let l:dgr = <SID>grey_level(l:gx) - a:r
		let l:dgg = <SID>grey_level(l:gy) - a:g
		let l:dgb = <SID>grey_level(l:gz) - a:b
		let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
		let l:dr = <SID>rgb_level(l:gx) - a:r
		let l:dg = <SID>rgb_level(l:gy) - a:g
		let l:db = <SID>rgb_level(l:gz) - a:b
		let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
		if l:dgrey < l:drgb
			" use the grey
			return <SID>grey_color(l:gx)
		else
			" use the color
			return <SID>rgb_color(l:x, l:y, l:z)
		endif
	else
		" only one possibility
		return <SID>rgb_color(l:x, l:y, l:z)
	endif
endfun

" returns the palette index to approximate the 'rrggbb' hex string
fun <SID>rgb(rgb)
	let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
	let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
	let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

	return <SID>color(l:r, l:g, l:b)
endfun

" sets the highlighting for the given group
fun <SID>X(group, fg, bg, attr)
	if a:fg != ""
		exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
	endif
	if a:bg != ""
		exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
	endif
	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
	endif
endfun
" }}}

" {{{1 vim groups

call <SID>X("ColorColumn", "", s:dark1, "none")
" call <SID>X("Conceal", "none", s:dark1, "none")
call <SID>X("Cursor", "", "", "")
" call <SID>X("CursorIM", "none", s:dark1, "none")
" call <SID>X("CursorColumn", "none", s:dark1, "none")
call <SID>X("CursorLine", "", s:dark1, "none")
" call <SID>X("Directory", "none", s:dark1, "none")
" call <SID>X("DiffAdd", "none", s:dark1, "none")
" call <SID>X("DiffChange", "none", s:dark1, "none")
" call <SID>X("DiffDelete", "none", s:dark1, "none")
" call <SID>X("DiffText", "none", s:dark1, "none")
" call <SID>X("ErrorMsg", "none", s:dark1, "none")
call <SID>X("VertSplit", s:green2, s:dark1, "none")
call <SID>X("Folded", s:light3, s:dark3, "none")
" call <SID>X("FoldColumn", "none", s:dark1, "none")
" call <SID>X("SignColumn", "none", s:dark1, "none")
call <SID>X("IncSearch", "", s:yellow1, "none")
call <SID>X("LineNr", s:light3, s:dark3, "none")
call <SID>X("CursorLineNr", s:light1, s:dark2, "none")
" call <SID>X("ModeMsg", "none", s:dark1, "none")
" call <SID>X("MoreMsg", "none", s:dark1, "none")
call <SID>X("NonText", s:dark1, s:dark2, "none")
call <SID>X("Normal", s:light2, s:dark2, "none")
call <SID>X("Pmenu", "none", s:dark1, "none")
call <SID>X("PmenuSel", "none", s:dark1, "none")
call <SID>X("PmenSbar", "none", s:dark1, "none")
call <SID>X("PmenuThumb", "none", s:dark1, "none")
" call <SID>X("Question", "none", s:dark1, "none")
call <SID>X("Search", "", "", "none")
call <SID>X("SpecialKey", s:dark1, s:dark2, "none")
call <SID>X("SpellBad", s:red2, s:dark2, "none")
call <SID>X("SpellCap", s:purple1, s:dark2, "none")
" call <SID>X("SpellLocal", "none", s:dark1, "none")
" call <SID>X("SpellRare", "none", s:dark1, "none")
" call <SID>X("StatusLine", "none", s:dark1, "none")
" call <SID>X("StatusLineNC", "none", s:dark1, "none")
call <SID>X("TabLine", s:light3, s:dark3, "none")
call <SID>X("TabLineFill", s:light3, s:dark3, "none")
call <SID>X("TabLineSel", s:light1, s:dark2, "none")
" call <SID>X("Title", "none", s:dark1, "none")
call <SID>X("Visual", "", s:dark3, "none")
" call <SID>X("VisualNOS", "none", s:dark1, "none")
" call <SID>X("WarningMSG", "none", s:dark1, "none")
" call <SID>X("WildMenu", "none", s:dark1, "none")
" }}}
" {{{ highlight groups

call <SID>X("Comment", s:green2, "", "")
call <SID>X("Constant", s:orange1, "", "")
call <SID>X("String", s:purple1, "", "")
call <SID>X("Character", s:purple1, "", "")
call <SID>X("Number", s:blue1, "", "")
call <SID>X("Boolean", s:green1, "", "")
call <SID>X("Float", s:blue1, "", "")

call <SID>X("Identifier", s:green3, "", "none")
call <SID>X("Function", s:red1, "", "none")

call <SID>X("Statement", s:orange1, "", "")
call <SID>X("Conditional", s:yellow1, "", "")
call <SID>X("Repeat", s:yellow1, "", "")
call <SID>X("Label", "", "", "")
call <SID>X("Operator", s:orange1, "", "none")
call <SID>X("Keyword", "", "", "none")
call <SID>X("Exception", "", "", "none")

call <SID>X("PreProc", "", "", "")
call <SID>X("Include", "", "", "")
call <SID>X("Define", "", "", "none")
call <SID>X("Macro", "", "", "none")
call <SID>X("PreCondit", "", "", "none")

call <SID>X("Type", s:green3, "", "none")
call <SID>X("StorageClass", s:blue1, "", "none")
call <SID>X("Structure", "", "", "")
call <SID>X("Typedef", "", "", "")

call <SID>X("Special", s:light2, "", "")
call <SID>X("SpecialChar", s:light2, "", "")
call <SID>X("Tag", "", "", "")
call <SID>X("Delimiter", s:light2, "", "")
call <SID>X("SpecialComment", s:light2, "", "")
call <SID>X("Debug", s:light2, "", "")

call <SID>X("Underlined",s:light2, s:dark2, "italic")

call <SID>X("Error",s:light2, s:dark2, "italic")

call <SID>X("Todo", s:red2, s:dark1, "")

" }}}

" vim: set fdm=marker:fdl=1
