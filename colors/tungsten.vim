" my vim color theme: tungsten
"

" theme colors
let s:color0  = 234 " dark black
let s:color1  = 236 " medium black
let s:color2  = 238 " light black
let s:color3  = 246 " dark white
let s:color4  = 252 " medium white
let s:color5  = 254 " light white
let s:color6  = 196 " bright red
let s:color7  = 131 " brick red
let s:color8  = 180 " orange
let s:color9  = 187 " yellow
let s:color10 = 118 " neon green
let s:color11 = 77  " green
let s:color12 = 115 " sea green
let s:color13 = 110 " blue
let s:color14 = 60  " dark blue
let s:color15 = 138 " purple

" {{{ Set up
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

call Tungsten("ColorColumn", "", s:color2, "none")
call Tungsten("Conceal", s:color3, s:color1, "none")
call Tungsten("Cursor", "", "", "")
" call Tungsten("CursorIM", "none", s:color2, "none")
call Tungsten("CursorColumn", "none", s:color2, "none")
call Tungsten("CursorLine", "", s:color2, "none")
" call Tungsten("Directory", "none", s:color2, "none")
call Tungsten("DiffAdd", s:color10, s:color1, "none")
call Tungsten("DiffChange", s:color12, s:color2, "none")
call Tungsten("DiffDelete", s:color6, s:color1, "none")
call Tungsten("DiffText", s:color6, s:color1, "none")
call Tungsten("ErrorMsg", "none", s:color2, "none")
call Tungsten("VertSplit", s:color14, s:color2, "none")
call Tungsten("Folded", s:color3, s:color0, "none")
" call Tungsten("FoldColumn", "none", s:color2, "none")
" call Tungsten("SignColumn", "none", s:color2, "none")
call Tungsten("IncSearch", s:color1, s:color9, "none")
call Tungsten("LineNr", s:color2, s:color0, "none")
call Tungsten("CursorLineNr", s:color5, s:color1, "none")
" call Tungsten("ModeMsg", "none", s:color2, "none")
" call Tungsten("MoreMsg", "none", s:color2, "none")
call Tungsten("NonText", s:color2, s:color1, "none")
call Tungsten("Normal", s:color4, s:color1, "none")
call Tungsten("Pmenu", s:color3, s:color2, "none")
call Tungsten("PmenuSel", s:color5, s:color0, "none")
call Tungsten("PmenSbar", "", s:color2, "none")
call Tungsten("PmenuThumb", "", s:color2, "none")
" call Tungsten("Question", "none", s:color2, "none")
call Tungsten("Search", s:color1, s:color15, "none")
call Tungsten("SpecialKey", s:color2, s:color1, "none")
call Tungsten("SpellBad", s:color15, "", "underline")
call Tungsten("SpellCap", s:color15, "", "underline")
" call Tungsten("SpellLocal", "none", s:color2, "none")
" call Tungsten("SpellRare", "none", s:color2, "none")
" call Tungsten("StatusLine", "none", s:color2, "none")
" call Tungsten("StatusLineNC", "none", s:color2, "none")
call Tungsten("TabLine", s:color3, s:color0, "none")
call Tungsten("TabLineFill", s:color3, s:color0, "none")
call Tungsten("TabLineSel", s:color5, s:color1, "none")
call Tungsten("Title", s:color12, "none", "none")
call Tungsten("Visual", "", s:color0, "none")
" call Tungsten("VisualNOS", "none", s:color2, "none")
" call Tungsten("WarningMSG", "none", s:color2, "none")
" call Tungsten("WildMenu", "none", s:color2, "none")
" }}}
" {{{ highlight groups

call Tungsten("Comment", s:color14, "", "")
call Tungsten("Constant", s:color8, "", "")
call Tungsten("String", s:color12, "", "")
call Tungsten("Character", s:color7, "", "")
call Tungsten("Number", s:color13, "", "")
call Tungsten("Boolean", s:color13, "", "")
call Tungsten("Float", s:color13, "", "")

call Tungsten("Identifier", s:color12, "", "none")
call Tungsten("Function", s:color7, "", "none")

call Tungsten("Statement", s:color8, "", "")
call Tungsten("Conditional", s:color9, "", "")
call Tungsten("Repeat", s:color9, "", "")
call Tungsten("Label", "", "", "")
call Tungsten("Operator", s:color8, "", "none")
call Tungsten("Keyword", s:color9, "", "none")
call Tungsten("Exception", "", "", "none")

call Tungsten("PreProc", s:color9, "", "")
call Tungsten("Include", "", "", "")
call Tungsten("Define", "", "", "none")
call Tungsten("Macro", "", "", "none")
call Tungsten("PreCondit", s:color7, "", "none")

call Tungsten("Type", s:color12, "", "none")
call Tungsten("StorageClass", s:color13, "", "none")
call Tungsten("Structure", "", "", "")
call Tungsten("Typedef", "", "", "")

call Tungsten("Special", s:color7, "", "")
call Tungsten("SpecialChar", s:color4, "", "")
call Tungsten("Tag", "", "", "")
call Tungsten("Delimiter", s:color3, "", "")
call Tungsten("SpecialComment", s:color4, "", "")
call Tungsten("Debug", s:color4, "", "")

call Tungsten("Underlined",s:color4, s:color1, "italic")

call Tungsten("Error",s:color6, "", "")

call Tungsten("Todo", s:color6, s:color2, "")

" }}}

" vim: set fdm=marker:fdl=1
