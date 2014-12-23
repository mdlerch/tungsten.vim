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
let s:color12G = "#87d7af" " sea green
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
    call TungstenG("ColorColumn", "", s:color2G, "NONE")
    call TungstenG("Conceal", s:color3G, s:color1G, "NONE")
    call TungstenG("Cursor", "", s:color5G, "")
    " call TungstenG("CursorIM", "NONE", s:color2G, "NONE")
    " call TungstenG("CursorIM", "NONE", s:color2G, "NONE")
    call TungstenG("CursorColumn", "NONE", s:color2G, "NONE")
    call TungstenG("CursorLine", "", s:color2G, "NONE")
    " call TungstenG("Directory", "NONE", s:color2G, "NONE")
    call TungstenG("DiffAdd", s:color10G, s:color1G, "NONE")
    call TungstenG("DiffChange", s:color12G, s:color2G, "NONE")
    call TungstenG("DiffDelete", s:color6G, s:color1G, "NONE")
    call TungstenG("DiffText", s:color6G, s:color1G, "NONE")
    call TungstenG("ErrorMsg", "NONE", s:color2G, "NONE")
    call TungstenG("VertSplit", s:color14G, s:color2G, "NONE")
    call TungstenG("Folded", s:color3G, s:color0G, "NONE")
    " call TungstenG("FoldColumn", "NONE", s:color2G, "NONE")
    " call TungstenG("SignColumn", "NONE", s:color2G, "NONE")
    call TungstenG("IncSearch", s:color1G, s:color9G, "NONE")
    call TungstenG("LineNr", s:color2G, s:color0G, "NONE")
    call TungstenG("CursorLineNr", s:color5G, s:color1G, "NONE")
    call TungstenG("MatchParen", "", s:color0G, "reverse")
    " call TungstenG("ModeMsg", "NONE", s:color2G, "NONE")
    " call TungstenG("MoreMsg", "NONE", s:color2G, "NONE")
    call TungstenG("NonText", s:color2G, s:color1G, "NONE")
    call TungstenG("Normal", s:color4G, s:color1G, "NONE")
    call TungstenG("Pmenu", s:color3G, s:color2G, "NONE")
    call TungstenG("PmenuSel", s:color5G, s:color0G, "NONE")
    call TungstenG("PmenSbar", "", s:color2G, "NONE")
    call TungstenG("PmenuThumb", "", s:color2G, "NONE")
    call TungstenG("Question", s:color4G, s:color2G, "NONE")
    call TungstenG("Search", s:color1G, s:color15G, "NONE")
    call TungstenG("SpecialKey", s:color2G, s:color1G, "NONE")
    call TungstenG("SpellBad", s:color15G, "", "undercurl")
    call TungstenG("SpellCap", s:color15G, "", "undercurl")
    " call TungstenG("SpellLocal", "NONE", s:color2G, "NONE")
    " call TungstenG("SpellRare", "NONE", s:color2G, "NONE")
    " call TungstenG("StatusLine", "NONE", s:color2G, "NONE")
    " call TungstenG("StatusLineNC", "NONE", s:color2G, "NONE")
    call TungstenG("TabLine", s:color3G, s:color0G, "NONE")
    call TungstenG("TabLineFill", s:color3G, s:color0G, "NONE")
    call TungstenG("TabLineSel", s:color5G, s:color1G, "NONE")
    call TungstenG("Title", s:color12G, "NONE", "NONE")
    call TungstenG("Visual", "", s:color0G, "NONE")
    " call TungstenG("VisualNOS", "NONE", s:color2G, "NONE")
    " call TungstenG("WarningMSG", "NONE", s:color2G, "NONE")
    " call TungstenG("WildMenu", "NONE", s:color2G, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call TungstenG("Comment", s:color14G, "", "")
    call TungstenG("Constant", s:color8G, "", "")
    call TungstenG("String", s:color12G, "", "")
    call TungstenG("Character", s:color7G, "", "")
    call TungstenG("Number", s:color13G, "", "")
    call TungstenG("Boolean", s:color13G, "", "")
    call TungstenG("Float", s:color13G, "", "")
    call TungstenG("Identifier", s:color12G, "", "NONE")
    call TungstenG("Function", s:color7G, "", "NONE")
    call TungstenG("Statement", s:color8G, "", "")
    call TungstenG("Conditional", s:color9G, "", "")
    call TungstenG("Repeat", s:color9G, "", "")
    call TungstenG("Label", "", "", "")
    call TungstenG("Operator", s:color8G, "", "NONE")
    call TungstenG("Keyword", s:color9G, "", "NONE")
    call TungstenG("Exception", "", "", "NONE")
    call TungstenG("PreProc", s:color9G, "", "")
    call TungstenG("Include", "", "", "")
    call TungstenG("Define", "", "", "NONE")
    call TungstenG("Macro", "", "", "NONE")
    call TungstenG("PreCondit", s:color7G, "", "NONE")
    call TungstenG("Type", s:color12G, "", "NONE")
    call TungstenG("StorageClass", s:color13G, "", "NONE")
    call TungstenG("Structure", "", "", "")
    call TungstenG("Typedef", "", "", "")
    call TungstenG("Special", s:color7G, "", "")
    call TungstenG("SpecialChar", s:color4G, "", "")
    call TungstenG("Tag", "", "", "")
    call TungstenG("Delimiter", s:color3G, "", "")
    call TungstenG("SpecialComment", s:color4G, "", "")
    call TungstenG("Debug", s:color4G, "", "")
    call TungstenG("Underlined",s:color4G, s:color1G, "underline")
    call TungstenG("Error",s:color6G, "", "")
    call TungstenG("Todo", s:color6G, s:color2G, "")
    " }}} Highlight groups
    " {{{ misc
    " TagHighlight
    call TungstenG("LocalVariable", "", "", "NONE")
    call TungstenG("Member", "", "", "NONE")
    " }}}
endif

if &t_Co==256
    " {{{ Vim groups
    call TungstenC("ColorColumn", "", s:color2C, "NONE")
    call TungstenC("Conceal", s:color3C, s:color1C, "NONE")
    call TungstenC("Cursor", "", "", "")
    " call Tungsten ("CursorIM", "NONE", s:color2C, "NONE")
    call TungstenC("CursorColumn", "NONE", s:color2C, "NONE")
    call TungstenC("CursorLine", "", s:color2C, "NONE")
    " call TungstenC("Directory", "NONE", s:color2C, "NONE")
    call TungstenC("DiffAdd", s:color10C, s:color1C, "NONE")
    call TungstenC("DiffChange", s:color12C, s:color2C, "NONE")
    call TungstenC("DiffDelete", s:color6C, s:color1C, "NONE")
    call TungstenC("DiffText", s:color6C, s:color1C, "NONE")
    call TungstenC("ErrorMsg", "NONE", s:color2C, "NONE")
    call TungstenC("VertSplit", s:color14C, s:color2C, "NONE")
    call TungstenC("Folded", s:color3C, s:color0C, "NONE")
    " call TungstenC("FoldColumn", "NONE", s:color2C, "NONE")
    " call TungstenC("SignColumn", "NONE", s:color2C, "NONE")
    call TungstenC("IncSearch", s:color1C, s:color9C, "NONE")
    call TungstenC("LineNr", s:color2C, s:color0C, "NONE")
    call TungstenC("CursorLineNr", s:color5C, s:color1C, "NONE")
    call TungstenC("MatchParen", "", s:color0C, "reverse")
    " call TungstenC("ModeMsg", "NONE", s:color2C, "NONE")
    " call TungstenC("MoreMsg", "NONE", s:color2C, "NONE")
    call TungstenC("NonText", s:color2C, s:color1C, "NONE")
    call TungstenC("Normal", s:color4C, s:color1C, "NONE")
    call TungstenC("Pmenu", s:color3C, s:color2C, "NONE")
    call TungstenC("PmenuSel", s:color5C, s:color0C, "NONE")
    call TungstenC("PmenSbar", "", s:color2C, "NONE")
    call TungstenC("PmenuThumb", "", s:color2C, "NONE")
    call TungstenC("Question", s:color4C, s:color2C, "NONE")
    call TungstenC("Search", s:color1C, s:color15C, "NONE")
    call TungstenC("SpecialKey", s:color2C, s:color1C, "NONE")
    call TungstenC("SpellBad", s:color15C, "", "underline")
    call TungstenC("SpellCap", s:color15C, "", "underline")
    " call TungstenC("SpellLocal", "NONE", s:color2C, "NONE")
    " call TungstenC("SpellRare", "NONE", s:color2C, "NONE")
    " call TungstenC("StatusLine", "NONE", s:color2C, "NONE")
    " call TungstenC("StatusLineNC", "NONE", s:color2C, "NONE")
    call TungstenC("TabLine", s:color3C, s:color0C, "NONE")
    call TungstenC("TabLineFill", s:color3C, s:color0C, "NONE")
    call TungstenC("TabLineSel", s:color5C, s:color1C, "NONE")
    call TungstenC("Title", s:color12C, "NONE", "NONE")
    call TungstenC("Visual", "", s:color0C, "NONE")
    " call TungstenC("VisualNOS", "NONE", s:color2C, "NONE")
    " call TungstenC("WarningMSG", "NONE", s:color2C, "NONE")
    " call TungstenC("WildMenu", "NONE", s:color2C, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call TungstenC("Comment", s:color14C, "", "")
    call TungstenC("Constant", s:color8C, "", "")
    call TungstenC("String", s:color12C, "", "")
    call TungstenC("Character", s:color7C, "", "")
    call TungstenC("Number", s:color13C, "", "")
    call TungstenC("Boolean", s:color13C, "", "")
    call TungstenC("Float", s:color13C, "", "")
    call TungstenC("Identifier", s:color12C, "", "NONE")
    call TungstenC("Function", s:color7C, "", "NONE")
    call TungstenC("Statement", s:color8C, "", "")
    call TungstenC("Conditional", s:color9C, "", "")
    call TungstenC("Repeat", s:color9C, "", "")
    call TungstenC("Label", "", "", "")
    call TungstenC("Operator", s:color8C, "", "NONE")
    call TungstenC("Keyword", s:color9C, "", "NONE")
    call TungstenC("Exception", "", "", "NONE")
    call TungstenC("PreProc", s:color9C, "", "")
    call TungstenC("Include", "", "", "")
    call TungstenC("Define", "", "", "NONE")
    call TungstenC("Macro", "", "", "NONE")
    call TungstenC("PreCondit", s:color7C, "", "NONE")
    call TungstenC("Type", s:color12C, "", "NONE")
    call TungstenC("StorageClass", s:color13C, "", "NONE")
    call TungstenC("Structure", "", "", "")
    call TungstenC("Typedef", "", "", "")
    call TungstenC("Special", s:color7C, "", "")
    call TungstenC("SpecialChar", s:color4C, "", "")
    call TungstenC("Tag", "", "", "")
    call TungstenC("Delimiter", s:color3C, "", "")
    call TungstenC("SpecialComment", s:color4C, "", "")
    call TungstenC("Debug", s:color4C, "", "")
    call TungstenC("Underlined",s:color4C, s:color1C, "italic")
    call TungstenC("Error",s:color6C, "", "")
    call TungstenC("Todo", s:color6C, s:color2C, "")
    " }}} Highlight groups
    " {{{ Misc
    " TagHighlight
    call TungstenC("LocalVariable", "", "", "NONE")
    call TungstenC("Member", "", "", "NONE")
    " }}}
endif

" vim: set fdm=marker:fdl=1
