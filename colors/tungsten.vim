" tungsten.vim a colorscheme for vim
" Maintainer: Michael Lerch (github.com/mdlerch)
" Version: 1.0

" A darkish color scheme for 256 and gui vim.
" Goals: easy on the eyes,
"        non-distracting,
"        completeness of highlight groups,
"        very obvious diffs,
"        consistency between gui and 256 term,
"        no need to set term colors

" theme colors
let s:color0C  = 234 " black 1 (dark)
let s:color1C  = 196 " red 1 (bright)
let s:color2C  = 118 " green 1 (bright)
let s:color3C  = 187 " yellow 1 (yellow)
let s:color4C  = 110 " blue 1 (light)
let s:color5C  = 138 " magenta 1 (purple)
let s:color6C  = 73  " cyan 1 (dim)
let s:color7C  = 254 " white 1 (light)
let s:color8C  = 238 " black 2 (light)
let s:color9C  = 131 " red 2 (brick)
let s:color10C = 115 " green 2 (sea green)
let s:color11C = 180 " yellow 2 (orange)
let s:color12C = 60  " blue 2 (dark)
let s:color13C = 236 " magenta 2 (medium black)
let s:color14C = 252 " cyan 2 (medium white)
let s:color15C = 246 " white 2 (dark)

let s:color0G  = "#1c1c1c" " black 1 (dark)
let s:color1G  = "#ff0000" " red 1 (bright)
let s:color2G  = "#87ff00" " green 1 (bright)
let s:color3G  = "#d7d7af" " yellow 1 (yellow)
let s:color4G  = "#87afd7" " blue 1 (light)
let s:color5G  = "#af8787" " magenta 1 (purple)
let s:color6G  = "#87ffff" " cyan 1 (dim)
let s:color7G  = "#e4e4e4" " white 1 (light)
let s:color8G  = "#444444" " black 2 (light)
let s:color9G  = "#af5f5f" " red 2 (brick)
let s:color10G = "#87d7af" " green 2 (sea green)
let s:color11G = "#d7af87" " yellow 2 (orange)
let s:color12G = "#5f5f87" " blue 2 (dark)
let s:color13G = "#303030" " magenta 2 (medium black)
let s:color14G = "#d0d0d0" " cyan 2 (medium white)
let s:color15G = "#949494" " white 2 (dark)

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
    exec "hi clear " . a:group
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

if has("gui_running")
    " {{{ Vim groups
    call TungstenG("ColorColumn", "", s:color8G, "NONE")
    call TungstenG("Conceal", s:color15G, s:color13G, "NONE")
    call TungstenG("Cursor", "", s:color7G, "")
    " call TungstenG("CursorIM", "NONE", s:color8G, "NONE")
    " call TungstenG("CursorIM", "NONE", s:color8G, "NONE")
    call TungstenG("CursorColumn", "NONE", s:color8G, "NONE")
    call TungstenG("CursorLine", "", s:color8G, "NONE")
    " call TungstenG("Directory", "NONE", s:color8G, "NONE")
    call TungstenG("DiffAdd", s:color2G, s:color13G, "NONE")
    call TungstenG("DiffChange", s:color10G, s:color8G, "NONE")
    call TungstenG("DiffDelete", s:color1G, s:color13G, "NONE")
    call TungstenG("DiffText", s:color1G, s:color13G, "NONE")
    call TungstenG("ErrorMsg", "NONE", s:color8G, "NONE")
    call TungstenG("VertSplit", s:color12G, s:color8G, "NONE")
    call TungstenG("Folded", s:color15G, s:color0G, "NONE")
    " call TungstenG("FoldColumn", "NONE", s:color8G, "NONE")
    " call TungstenG("SignColumn", "NONE", s:color8G, "NONE")
    call TungstenG("IncSearch", s:color13G, s:color3G, "NONE")
    call TungstenG("LineNr", s:color8G, s:color0G, "NONE")
    call TungstenG("CursorLineNr", s:color7G, s:color13G, "NONE")
    call TungstenG("MatchParen", "", s:color0G, "reverse")
    " call TungstenG("ModeMsg", "NONE", s:color8G, "NONE")
    " call TungstenG("MoreMsg", "NONE", s:color8G, "NONE")
    call TungstenG("NonText", s:color8G, s:color13G, "NONE")
    call TungstenG("Normal", s:color14G, s:color13G, "NONE")
    call TungstenG("Pmenu", s:color15G, s:color8G, "NONE")
    call TungstenG("PmenuSel", s:color7G, s:color0G, "NONE")
    call TungstenG("PmenSbar", "", s:color8G, "NONE")
    call TungstenG("PmenuThumb", "", s:color8G, "NONE")
    call TungstenG("Question", s:color14G, s:color8G, "NONE")
    call TungstenG("Search", s:color13G, s:color5G, "NONE")
    call TungstenG("SpecialKey", s:color8G, s:color13G, "NONE")
    call TungstenG("SpellBad", s:color5G, "", "undercurl")
    call TungstenG("SpellCap", s:color5G, "", "undercurl")
    " call TungstenG("SpellLocal", "NONE", s:color8G, "NONE")
    " call TungstenG("SpellRare", "NONE", s:color8G, "NONE")
    " call TungstenG("StatusLine", "NONE", s:color8G, "NONE")
    " call TungstenG("StatusLineNC", "NONE", s:color8G, "NONE")
    call TungstenG("TabLine", s:color15G, s:color0G, "NONE")
    call TungstenG("TabLineFill", s:color15G, s:color0G, "NONE")
    call TungstenG("TabLineSel", s:color7G, s:color13G, "NONE")
    call TungstenG("Title", s:color10G, "NONE", "NONE")
    call TungstenG("Visual", "", s:color0G, "NONE")
    " call TungstenG("VisualNOS", "NONE", s:color8G, "NONE")
    " call TungstenG("WarningMSG", "NONE", s:color8G, "NONE")
    " call TungstenG("WildMenu", "NONE", s:color8G, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call TungstenG("Comment", s:color12G, "", "")
    call TungstenG("Constant", s:color11G, "", "")
    call TungstenG("String", s:color10G, "", "")
    call TungstenG("Character", s:color9G, "", "")
    call TungstenG("Number", s:color4G, "", "")
    call TungstenG("Boolean", s:color4G, "", "")
    call TungstenG("Float", s:color4G, "", "")
    call TungstenG("Identifier", s:color10G, "", "NONE")
    call TungstenG("Function", s:color9G, "", "NONE")
    call TungstenG("Statement", s:color11G, "", "")
    call TungstenG("Conditional", s:color3G, "", "")
    call TungstenG("Repeat", s:color3G, "", "")
    call TungstenG("Label", "", "", "")
    call TungstenG("Operator", s:color11G, "", "NONE")
    call TungstenG("Keyword", s:color3G, "", "NONE")
    call TungstenG("Exception", "", "", "NONE")
    call TungstenG("PreProc", s:color6G, "", "")
    call TungstenG("Include", s:color6G, "", "")
    call TungstenG("Define", s:color6G, "", "NONE")
    call TungstenG("Macro", s:color6G, "", "NONE")
    call TungstenG("PreCondit", s:color9G, "", "NONE")
    call TungstenG("Type", s:color10G, "", "NONE")
    call TungstenG("StorageClass", s:color4G, "", "NONE")
    call TungstenG("Structure", "", "", "")
    call TungstenG("Typedef", "", "", "")
    call TungstenG("Special", s:color9G, "", "")
    call TungstenG("SpecialChar", s:color14G, "", "")
    call TungstenG("Tag", "", "", "")
    call TungstenG("Delimiter", s:color15G, "", "")
    call TungstenG("SpecialComment", s:color14G, "", "")
    call TungstenG("Debug", s:color14G, "", "")
    call TungstenG("Underlined",s:color14G, s:color13G, "underline")
    call TungstenG("Error",s:color1G, "", "")
    call TungstenG("Todo", s:color1G, s:color8G, "")
    " }}} Highlight groups
    " {{{ misc
    " TagHighlight
    call TungstenG("LocalVariable", "", "", "NONE")
    call TungstenG("Member", "", "", "NONE")
    " }}}
endif

if &t_Co==256
    " {{{ Vim groups
    call TungstenC("ColorColumn", "", s:color8C, "NONE")
    call TungstenC("Conceal", s:color15C, s:color13C, "NONE")
    call TungstenC("Cursor", "", "", "")
    " call Tungsten ("CursorIM", "NONE", s:color8C, "NONE")
    call TungstenC("CursorColumn", "NONE", s:color8C, "NONE")
    call TungstenC("CursorLine", "", s:color8C, "NONE")
    " call TungstenC("Directory", "NONE", s:color8C, "NONE")
    call TungstenC("DiffAdd", s:color2C, s:color13C, "NONE")
    call TungstenC("DiffChange", s:color10C, s:color8C, "NONE")
    call TungstenC("DiffDelete", s:color1C, s:color13C, "NONE")
    call TungstenC("DiffText", s:color1C, s:color13C, "NONE")
    call TungstenC("ErrorMsg", "NONE", s:color8C, "NONE")
    call TungstenC("VertSplit", s:color12C, s:color8C, "NONE")
    call TungstenC("Folded", s:color15C, s:color0C, "NONE")
    " call TungstenC("FoldColumn", "NONE", s:color8C, "NONE")
    " call TungstenC("SignColumn", "NONE", s:color8C, "NONE")
    call TungstenC("IncSearch", s:color13C, s:color3C, "NONE")
    call TungstenC("LineNr", s:color8C, s:color0C, "NONE")
    call TungstenC("CursorLineNr", s:color7C, s:color13C, "NONE")
    call TungstenC("MatchParen", "", s:color0C, "reverse")
    " call TungstenC("ModeMsg", "NONE", s:color8C, "NONE")
    " call TungstenC("MoreMsg", "NONE", s:color8C, "NONE")
    call TungstenC("NonText", s:color8C, s:color13C, "NONE")
    call TungstenC("Normal", s:color14C, s:color13C, "NONE")
    call TungstenC("Pmenu", s:color15C, s:color8C, "NONE")
    call TungstenC("PmenuSel", s:color7C, s:color0C, "NONE")
    call TungstenC("PmenSbar", "", s:color8C, "NONE")
    call TungstenC("PmenuThumb", "", s:color8C, "NONE")
    call TungstenC("Question", s:color14C, s:color8C, "NONE")
    call TungstenC("Search", s:color13C, s:color5C, "NONE")
    call TungstenC("SpecialKey", s:color8C, s:color13C, "NONE")
    call TungstenC("SpellBad", s:color5C, "", "underline")
    call TungstenC("SpellCap", s:color5C, "", "underline")
    " call TungstenC("SpellLocal", "NONE", s:color8C, "NONE")
    " call TungstenC("SpellRare", "NONE", s:color8C, "NONE")
    " call TungstenC("StatusLine", "NONE", s:color8C, "NONE")
    " call TungstenC("StatusLineNC", "NONE", s:color8C, "NONE")
    call TungstenC("TabLine", s:color15C, s:color0C, "NONE")
    call TungstenC("TabLineFill", s:color15C, s:color0C, "NONE")
    call TungstenC("TabLineSel", s:color7C, s:color13C, "NONE")
    call TungstenC("Title", s:color10C, "NONE", "NONE")
    call TungstenC("Visual", "", s:color0C, "NONE")
    " call TungstenC("VisualNOS", "NONE", s:color8C, "NONE")
    " call TungstenC("WarningMSG", "NONE", s:color8C, "NONE")
    " call TungstenC("WildMenu", "NONE", s:color8C, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call TungstenC("Comment", s:color12C, "", "")
    call TungstenC("Constant", s:color11C, "", "")
    call TungstenC("String", s:color10C, "", "")
    call TungstenC("Character", s:color9C, "", "")
    call TungstenC("Number", s:color4C, "", "")
    call TungstenC("Boolean", s:color4C, "", "")
    call TungstenC("Float", s:color4C, "", "")
    call TungstenC("Identifier", s:color10C, "", "NONE")
    call TungstenC("Function", s:color9C, "", "NONE")
    call TungstenC("Statement", s:color11C, "", "")
    call TungstenC("Conditional", s:color3C, "", "")
    call TungstenC("Repeat", s:color3C, "", "")
    call TungstenC("Label", "", "", "")
    call TungstenC("Operator", s:color11C, "", "NONE")
    call TungstenC("Keyword", s:color3C, "", "NONE")
    call TungstenC("Exception", "", "", "NONE")
    call TungstenC("PreProc", s:color6C, "", "")
    call TungstenC("Include", s:color6C, "", "")
    call TungstenC("Define", s:color6C, "", "NONE")
    call TungstenC("Macro", s:color6C, "", "NONE")
    call TungstenC("PreCondit", s:color9C, "", "NONE")
    call TungstenC("Type", s:color10C, "", "NONE")
    call TungstenC("StorageClass", s:color4C, "", "NONE")
    call TungstenC("Structure", "", "", "")
    call TungstenC("Typedef", "", "", "")
    call TungstenC("Special", s:color9C, "", "")
    call TungstenC("SpecialChar", s:color14C, "", "")
    call TungstenC("Tag", "", "", "")
    call TungstenC("Delimiter", s:color15C, "", "")
    call TungstenC("SpecialComment", s:color14C, "", "")
    call TungstenC("Debug", s:color14C, "", "")
    call TungstenC("Underlined",s:color14C, s:color13C, "italic")
    call TungstenC("Error",s:color1C, "", "")
    call TungstenC("Todo", s:color1C, s:color8C, "")
    " }}} Highlight groups
    " {{{ Misc
    " TagHighlight
    call TungstenC("LocalVariable", "", "", "NONE")
    call TungstenC("Member", "", "", "NONE")
    " }}}
endif

" vim: set fdm=marker:fdl=1
