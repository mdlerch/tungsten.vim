" vim color theme: tungsten

" theme colors
let s:light1  = 254 "e4e4e4
let s:light2  = 252 "d0d0d0
let s:light3  = 246 "949494
let s:dark1   = 238 "444444
let s:dark2   = 236 "303030
let s:dark3   = 235 "262626
let s:dark4   = 234 "1c1c1c
let s:green1  = 77 "5fd75f
let s:green2  = 65 "5f875f
let s:green3  = 121 "87ffaf
let s:blue1   = 110 "87afd7
let s:blue2   = 109 "87afaf
let s:purple1 = 138 "af8787
let s:yellow1 = 186 "dfdf87
let s:red1    = 131 "af5f5f
let s:red2    = 160 "d70000
let s:orange1 = 179 "dfaf5f


set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "tungsten"

function! Tungsten(group, fg, bg, attr)
	exec "hi clear " . a:group
	if a:fg != ""
		exec "hi " . a:group . " ctermfg=" . a:fg
	endif
	if a:bg != ""
		exec "hi " . a:group . " ctermbg=" . a:bg
	endif
	if a:attr != ""
		exec "hi " . a:group . " cterm=" . a:attr
	endif
endfunction

" }}}

" {{{1 vim groups

call Tungsten("ColorColumn", "", s:dark1, "none")
" call Tungsten("Conceal", "none", s:dark1, "none")
call Tungsten("Cursor", "", "", "")
" call Tungsten("CursorIM", "none", s:dark1, "none")
" call Tungsten("CursorColumn", "none", s:dark1, "none")
call Tungsten("CursorLine", "", s:dark1, "none")
" call Tungsten("Directory", "none", s:dark1, "none")
" call Tungsten("DiffAdd", "none", s:dark1, "none")
" call Tungsten("DiffChange", "none", s:dark1, "none")
" call Tungsten("DiffDelete", "none", s:dark1, "none")
" call Tungsten("DiffText", "none", s:dark1, "none")
" call Tungsten("ErrorMsg", "none", s:dark1, "none")
call Tungsten("VertSplit", s:green2, s:dark1, "none")
call Tungsten("Folded", s:light3, s:dark3, "none")
" call Tungsten("FoldColumn", "none", s:dark1, "none")
" call Tungsten("SignColumn", "none", s:dark1, "none")
call Tungsten("IncSearch", "", s:yellow1, "none")
call Tungsten("LineNr", s:light3, s:dark3, "none")
call Tungsten("CursorLineNr", s:light1, s:dark2, "none")
" call Tungsten("ModeMsg", "none", s:dark1, "none")
" call Tungsten("MoreMsg", "none", s:dark1, "none")
call Tungsten("NonText", s:dark1, s:dark2, "none")
call Tungsten("Normal", s:light2, s:dark2, "none")
call Tungsten("Pmenu", "none", s:dark1, "none")
call Tungsten("PmenuSel", "none", s:dark1, "none")
call Tungsten("PmenSbar", "none", s:dark1, "none")
call Tungsten("PmenuThumb", "none", s:dark1, "none")
" call Tungsten("Question", "none", s:dark1, "none")
call Tungsten("Search", "", "", "none")
call Tungsten("SpecialKey", s:dark1, s:dark2, "none")
call Tungsten("SpellBad", s:red2, s:dark2, "none")
call Tungsten("SpellCap", s:purple1, s:dark2, "none")
" call Tungsten("SpellLocal", "none", s:dark1, "none")
" call Tungsten("SpellRare", "none", s:dark1, "none")
" call Tungsten("StatusLine", "none", s:dark1, "none")
" call Tungsten("StatusLineNC", "none", s:dark1, "none")
call Tungsten("TabLine", s:light3, s:dark3, "none")
call Tungsten("TabLineFill", s:light3, s:dark3, "none")
call Tungsten("TabLineSel", s:light1, s:dark2, "none")
" call Tungsten("Title", "none", s:dark1, "none")
call Tungsten("Visual", "", s:dark3, "none")
" call Tungsten("VisualNOS", "none", s:dark1, "none")
" call Tungsten("WarningMSG", "none", s:dark1, "none")
" call Tungsten("WildMenu", "none", s:dark1, "none")
" }}}
" {{{ highlight groups

call Tungsten("Comment", s:green2, "", "")
call Tungsten("Constant", s:orange1, "", "")
call Tungsten("String", s:purple1, "", "")
call Tungsten("Character", s:purple1, "", "")
call Tungsten("Number", s:blue1, "", "")
call Tungsten("Boolean", s:green1, "", "")
call Tungsten("Float", s:blue1, "", "")

call Tungsten("Identifier", s:green3, "", "none")
call Tungsten("Function", s:red1, "", "none")

call Tungsten("Statement", s:orange1, "", "")
call Tungsten("Conditional", s:yellow1, "", "")
call Tungsten("Repeat", s:yellow1, "", "")
call Tungsten("Label", "", "", "")
call Tungsten("Operator", s:orange1, "", "none")
call Tungsten("Keyword", "", "", "none")
call Tungsten("Exception", "", "", "none")

call Tungsten("PreProc", "", "", "")
call Tungsten("Include", "", "", "")
call Tungsten("Define", "", "", "none")
call Tungsten("Macro", "", "", "none")
call Tungsten("PreCondit", s:purple1, "", "none")

call Tungsten("Type", s:green3, "", "none")
call Tungsten("StorageClass", s:blue1, "", "none")
call Tungsten("Structure", "", "", "")
call Tungsten("Typedef", "", "", "")

call Tungsten("Special", s:purple1, "", "")
call Tungsten("SpecialChar", s:light2, "", "")
call Tungsten("Tag", "", "", "")
call Tungsten("Delimiter", s:light3, "", "")
call Tungsten("SpecialComment", s:light2, "", "")
call Tungsten("Debug", s:light2, "", "")

call Tungsten("Underlined",s:light2, s:dark2, "italic")

call Tungsten("Error",s:light2, s:dark2, "italic")

call Tungsten("Todo", s:red2, s:dark1, "")

" }}}

" vim: set fdm=marker:fdl=1
