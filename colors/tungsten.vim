" my vim color theme: tungsten
"

" theme colors
let s:color0C  = 234 " dark black
let s:color1C  = 236 " medium black
let s:color2C  = 238 " light black
let s:color3C  = 246 " dark white
let s:color4C  = 252 " medium white
let s:color5C  = 254 " light white
let s:color6C  = 196 " bright red
let s:color7C  = 131 " brick red
let s:color8C  = 180 " orange
let s:color9C  = 187 " yellow
let s:color10C = 118 " neon green
let s:color11C = 77  " green
let s:color12C = 115 " sea green
let s:color13C = 110 " blue
let s:color14C = 60  " dark blue
let s:color15C = 138 " purple

let s:color0G  = "#1c1c1c" " dark black
let s:color1G  = "#303030" " medium black
let s:color2G  = "#444444" " light black
let s:color3G  = "#949494" " dark white
let s:color4G  = "#d0d0d0" " medium white
let s:color5G  = "#e4e4e4" " light white
let s:color6G  = "#ff0000" " bright red
let s:color7G  = "#af5f5f" " brick red
let s:color8G  = "#d7af87" " orange
let s:color9G  = "#d7d7af" " yellow
let s:color10G = "#87ff00" " neon green
let s:color11G = "#5fd75f"  " green
let s:color12G = "#87d787" " sea green
let s:color13G = "#87afd7" " blue
let s:color14G = "#5f5f87"  " dark blue
let s:color15G = "#af8787" " purple

" {{{ Set up
set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "tungsten"

function! TungstenC(group, fg, bg, attr)
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

function! TungstenG(group, fg, bg, attr)
    if has("gui")
        exec "hi clear " . a:group
    endif
	if a:fg != ""
		exec "hi " . a:group . " guifg=" . a:fg
	endif
	if a:bg != ""
		exec "hi " . a:group . " guibg=" . a:bg
	endif
	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr
	endif
endfunction

" }}}
" {{{1 vim groups

call TungstenC("ColorColumn", "", s:color2C, "none")
call TungstenG("ColorColumn", "", s:color2G, "none")
call TungstenC("Conceal", s:color3C, s:color1C, "none")
call TungstenG("Conceal", s:color3G, s:color1G, "none")
call TungstenC("Cursor", "", "", "")
call TungstenG("Cursor", "", "", "")
" call Tungsten ("CursorIM", "none", s:color2C, "none")
" call TungstenG("CursorIM", "none", s:color2G, "none")
" call TungstenG("CursorIM", "none", s:color2G, "none")
call TungstenC("CursorColumn", "none", s:color2C, "none")
call TungstenG("CursorColumn", "none", s:color2G, "none")
call TungstenC("CursorLine", "", s:color2C, "none")
call TungstenG("CursorLine", "", s:color2G, "none")
" call TungstenC("Directory", "none", s:color2C, "none")
" call TungstenG("Directory", "none", s:color2G, "none")
call TungstenC("DiffAdd", s:color10C, s:color1C, "none")
call TungstenG("DiffAdd", s:color10G, s:color1G, "none")
call TungstenC("DiffChange", s:color12C, s:color2C, "none")
call TungstenG("DiffGhange", s:color12G, s:color2G, "none")
call TungstenC("DiffDelete", s:color6C, s:color1C, "none")
call TungstenG("DiffDelete", s:color6G, s:color1G, "none")
call TungstenC("DiffText", s:color6C, s:color1C, "none")
call TungstenG("DiffText", s:color6G, s:color1G, "none")
call TungstenC("ErrorMsg", "none", s:color2C, "none")
call TungstenG("ErrorMsg", "none", s:color2G, "none")
call TungstenC("VertSplit", s:color14C, s:color2C, "none")
call TungstenG("VertSplit", s:color14G, s:color2G, "none")
call TungstenC("Folded", s:color3C, s:color0C, "none")
call TungstenG("Folded", s:color3G, s:color0G, "none")
" call TungstenC("FoldColumn", "none", s:color2C, "none")
" call TungstenG("FoldGolumn", "none", s:color2G, "none")
" call TungstenC("SignColumn", "none", s:color2C, "none")
" call TungstenG("SignGolumn", "none", s:color2G, "none")
call TungstenC("IncSearch", s:color1C, s:color9C, "none")
call TungstenG("IncSearch", s:color1G, s:color9G, "none")
call TungstenC("LineNr", s:color2C, s:color0C, "none")
call TungstenG("LineNr", s:color2G, s:color0G, "none")
call TungstenC("CursorLineNr", s:color5C, s:color1C, "none")
call TungstenG("CursorLineNr", s:color5G, s:color1G, "none")
" call TungstenC("ModeMsg", "none", s:color2C, "none")
" call TungstenG("ModeMsg", "none", s:color2G, "none")
" call TungstenC("MoreMsg", "none", s:color2C, "none")
" call TungstenG("MoreMsg", "none", s:color2G, "none")
call TungstenC("NonText", s:color2C, s:color1C, "none")
call TungstenG("NonText", s:color2G, s:color1G, "none")
call TungstenC("Normal", s:color4C, s:color1C, "none")
call TungstenG("Normal", s:color4G, s:color1G, "none")
call TungstenC("Pmenu", s:color3C, s:color2C, "none")
call TungstenG("Pmenu", s:color3G, s:color2G, "none")
call TungstenC("PmenuSel", s:color5C, s:color0C, "none")
call TungstenG("PmenuSel", s:color5G, s:color0G, "none")
call TungstenC("PmenSbar", "", s:color2C, "none")
call TungstenG("PmenSbar", "", s:color2G, "none")
call TungstenC("PmenuThumb", "", s:color2C, "none")
call TungstenG("PmenuThumb", "", s:color2G, "none")
" call TungstenC("Question", "none", s:color2C, "none")
" call TungstenG("Question", "none", s:color2G, "none")
call TungstenC("Search", s:color1C, s:color15C, "none")
call TungstenG("Search", s:color1G, s:color15G, "none")
call TungstenC("SpecialKey", s:color2C, s:color1C, "none")
call TungstenG("SpecialKey", s:color2G, s:color1G, "none")
call TungstenC("SpellBad", s:color15C, "", "underline")
call TungstenG("SpellBad", s:color15G, "", "underline")
call TungstenC("SpellCap", s:color15C, "", "underline")
call TungstenG("SpellGap", s:color15G, "", "underline")
" call TungstenC("SpellLocal", "none", s:color2C, "none")
" call TungstenG("SpellLocal", "none", s:color2G, "none")
" call TungstenC("SpellRare", "none", s:color2C, "none")
" call TungstenG("SpellRare", "none", s:color2G, "none")
" call TungstenC("StatusLine", "none", s:color2C, "none")
" call TungstenG("StatusLine", "none", s:color2G, "none")
" call TungstenC("StatusLineNC", "none", s:color2C, "none")
" call TungstenG("StatusLineNG", "none", s:color2G, "none")
call TungstenC("TabLine", s:color3C, s:color0C, "none")
call TungstenG("TabLine", s:color3G, s:color0G, "none")
call TungstenC("TabLineFill", s:color3C, s:color0C, "none")
call TungstenG("TabLineFill", s:color3G, s:color0G, "none")
call TungstenC("TabLineSel", s:color5C, s:color1C, "none")
call TungstenG("TabLineSel", s:color5G, s:color1G, "none")
call TungstenC("Title", s:color12C, "none", "none")
call TungstenG("Title", s:color12G, "none", "none")
call TungstenC("Visual", "", s:color0C, "none")
call TungstenG("Visual", "", s:color0G, "none")
" call TungstenC("VisualNOS", "none", s:color2C, "none")
" call TungstenG("VisualNOS", "none", s:color2G, "none")
" call TungstenC("WarningMSG", "none", s:color2C, "none")
" call TungstenG("WarningMSG", "none", s:color2G, "none")
" call TungstenC("WildMenu", "none", s:color2C, "none")
" call TungstenG("WildMenu", "none", s:color2G, "none")
" }}}
" {{{ highlight groups

call TungstenC("Comment", s:color14C, "", "")
call TungstenG("Comment", s:color14G, "", "")
call TungstenC("Constant", s:color8C, "", "")
call TungstenG("Constant", s:color8G, "", "")
call TungstenC("String", s:color12C, "", "")
call TungstenG("String", s:color12G, "", "")
call TungstenC("Character", s:color7C, "", "")
call TungstenG("Gharacter", s:color7G, "", "")
call TungstenC("Number", s:color13C, "", "")
call TungstenG("Number", s:color13G, "", "")
call TungstenC("Boolean", s:color13C, "", "")
call TungstenG("Boolean", s:color13G, "", "")
call TungstenC("Float", s:color13C, "", "")
call TungstenG("Float", s:color13G, "", "")

call TungstenC("Identifier", s:color12C, "", "none")
call TungstenG("Identifier", s:color12G, "", "none")
call TungstenC("Function", s:color7C, "", "none")
call TungstenG("Function", s:color7G, "", "none")

call TungstenC("Statement", s:color8C, "", "")
call TungstenG("Statement", s:color8G, "", "")
call TungstenC("Conditional", s:color9C, "", "")
call TungstenG("Conditional", s:color9G, "", "")
call TungstenC("Repeat", s:color9C, "", "")
call TungstenG("Repeat", s:color9G, "", "")
call TungstenC("Label", "", "", "")
call TungstenG("Label", "", "", "")
call TungstenC("Operator", s:color8C, "", "none")
call TungstenG("Operator", s:color8G, "", "none")
call TungstenC("Keyword", s:color9C, "", "none")
call TungstenG("Keyword", s:color9G, "", "none")
call TungstenC("Exception", "", "", "none")
call TungstenG("Exception", "", "", "none")

call TungstenC("PreProc", s:color9C, "", "")
call TungstenG("PreProc", s:color9G, "", "")
call TungstenC("Include", "", "", "")
call TungstenG("Include", "", "", "")
call TungstenC("Define", "", "", "none")
call TungstenG("Define", "", "", "none")
call TungstenC("Macro", "", "", "none")
call TungstenG("Macro", "", "", "none")
call TungstenC("PreCondit", s:color7C, "", "none")
call TungstenG("PreGondit", s:color7G, "", "none")

call TungstenC("Type", s:color12C, "", "none")
call TungstenG("Type", s:color12G, "", "none")
call TungstenC("StorageClass", s:color13C, "", "none")
call TungstenG("StorageGlass", s:color13G, "", "none")
call TungstenC("Structure", "", "", "")
call TungstenG("Structure", "", "", "")
call TungstenC("Typedef", "", "", "")
call TungstenG("Typedef", "", "", "")

call TungstenC("Special", s:color7C, "", "")
call TungstenG("Special", s:color7G, "", "")
call TungstenC("SpecialChar", s:color4C, "", "")
call TungstenG("SpecialGhar", s:color4G, "", "")
call TungstenC("Tag", "", "", "")
call TungstenG("Tag", "", "", "")
call TungstenC("Delimiter", s:color3C, "", "")
call TungstenG("Delimiter", s:color3G, "", "")
call TungstenC("SpecialComment", s:color4C, "", "")
call TungstenG("SpecialGomment", s:color4G, "", "")
call TungstenC("Debug", s:color4C, "", "")
call TungstenG("Debug", s:color4G, "", "")

call TungstenC("Underlined",s:color4C, s:color1C, "italic")
call TungstenG("Underlined",s:color4G, s:color1G, "italic")

call TungstenC("Error",s:color6C, "", "")
call TungstenG("Error",s:color6G, "", "")

call TungstenC("Todo", s:color6C, s:color2C, "")
call TungstenG("Todo", s:color6G, s:color2G, "")

" }}}

" vim: set fdm=marker:fdl=1
