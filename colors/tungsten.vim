" my vim color theme: tungsten
"
" theme colors
" color0 black lightest black
let s:color0   = 238
" color1 red brick red
let s:color1    = 131
" color2 green sea green
let s:color2  = 77
" color3 yellow
let s:color3 = 187
" color4 blue number blue
let s:color4   = 110
" color5 magenta magenta
let s:color5 = 138
" color6 cyan darkest white
let s:color6  = 246
" color7 white lightest white
let s:color7  = 254
" color8 black medium black
let s:color8   = 236
" color9 red
let s:color9 = 124
" color10 green turquoise
let s:color10  = 115
" color11 yellow
let s:color11 = 180
" color12 blue dark blue
let s:color12   = 60
" color13 magenta
" color14 cyan dark black
let s:color14   = 234
" color15 white medium white
let s:color15  = 252



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

call Tungsten("ColorColumn", "", s:color0, "none")
call Tungsten("Conceal", s:color6, s:color8, "none")
call Tungsten("Cursor", "", "", "")
" call Tungsten("CursorIM", "none", s:color0, "none")
call Tungsten("CursorColumn", "none", s:color0, "none")
call Tungsten("CursorLine", "", s:color0, "none")
" call Tungsten("Directory", "none", s:color0, "none")
call Tungsten("DiffAdd", s:color2, s:color8, "none")
call Tungsten("DiffChange", s:color10, s:color0, "none")
call Tungsten("DiffDelete", s:color9, s:color8, "none")
call Tungsten("DiffText", s:color9, s:color8, "none")
call Tungsten("ErrorMsg", "none", s:color0, "none")
call Tungsten("VertSplit", s:color12, s:color0, "none")
call Tungsten("Folded", s:color6, s:color14, "none")
" call Tungsten("FoldColumn", "none", s:color0, "none")
" call Tungsten("SignColumn", "none", s:color0, "none")
call Tungsten("IncSearch", s:color8, s:color3, "none")
call Tungsten("LineNr", s:color0, s:color14, "none")
call Tungsten("CursorLineNr", s:color7, s:color8, "none")
" call Tungsten("ModeMsg", "none", s:color0, "none")
" call Tungsten("MoreMsg", "none", s:color0, "none")
call Tungsten("NonText", s:color0, s:color8, "none")
call Tungsten("Normal", s:color15, s:color8, "none")
call Tungsten("Pmenu", s:color6, s:color0, "none")
call Tungsten("PmenuSel", s:color7, s:color14, "none")
call Tungsten("PmenSbar", "", s:color0, "none")
call Tungsten("PmenuThumb", "", s:color0, "none")
" call Tungsten("Question", "none", s:color0, "none")
call Tungsten("Search", "", "", "none")
call Tungsten("SpecialKey", s:color0, s:color8, "none")
call Tungsten("SpellBad", s:color1, "", "underline")
call Tungsten("SpellCap", "", "", "underline")
" call Tungsten("SpellLocal", "none", s:color0, "none")
" call Tungsten("SpellRare", "none", s:color0, "none")
" call Tungsten("StatusLine", "none", s:color0, "none")
" call Tungsten("StatusLineNC", "none", s:color0, "none")
call Tungsten("TabLine", s:color6, s:color14, "none")
call Tungsten("TabLineFill", s:color6, s:color14, "none")
call Tungsten("TabLineSel", s:color7, s:color8, "none")
" call Tungsten("Title", "none", s:color0, "none")
call Tungsten("Visual", "", s:color14, "none")
" call Tungsten("VisualNOS", "none", s:color0, "none")
" call Tungsten("WarningMSG", "none", s:color0, "none")
" call Tungsten("WildMenu", "none", s:color0, "none")
" }}}
" {{{ highlight groups

call Tungsten("Comment", s:color12, "", "")
call Tungsten("Constant", s:color11, "", "")
call Tungsten("String", s:color5, "", "")
call Tungsten("Character", s:color5, "", "")
call Tungsten("Number", s:color4, "", "")
call Tungsten("Boolean", s:color2, "", "")
call Tungsten("Float", s:color4, "", "")

call Tungsten("Identifier", s:color10, "", "none")
call Tungsten("Function", s:color1, "", "none")

call Tungsten("Statement", s:color11, "", "")
call Tungsten("Conditional", s:color3, "", "")
call Tungsten("Repeat", s:color3, "", "")
call Tungsten("Label", "", "", "")
call Tungsten("Operator", s:color11, "", "none")
call Tungsten("Keyword", "", "", "none")
call Tungsten("Exception", "", "", "none")

call Tungsten("PreProc", "", "", "")
call Tungsten("Include", "", "", "")
call Tungsten("Define", "", "", "none")
call Tungsten("Macro", "", "", "none")
call Tungsten("PreCondit", s:color5, "", "none")

call Tungsten("Type", s:color10, "", "none")
call Tungsten("StorageClass", s:color4, "", "none")
call Tungsten("Structure", "", "", "")
call Tungsten("Typedef", "", "", "")

call Tungsten("Special", s:color5, "", "")
call Tungsten("SpecialChar", s:color15, "", "")
call Tungsten("Tag", "", "", "")
call Tungsten("Delimiter", s:color6, "", "")
call Tungsten("SpecialComment", s:color15, "", "")
call Tungsten("Debug", s:color15, "", "")

call Tungsten("Underlined",s:color15, s:color8, "italic")

call Tungsten("Error",s:color15, s:color8, "italic")

call Tungsten("Todo", s:color1, s:color0, "")

" }}}

" vim: set fdm=marker:fdl=1
