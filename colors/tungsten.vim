" tungsten.vim a colorscheme for vim
" Maintainer: Michael Lerch (github.com/mdlerch)
" Version: 1.0

" A darkish color scheme for 256 and gui vim.
" Goals: easy on the eyes,
"        non-distracting,
"        eye drawn to important parts,
"        completeness of highlight groups,
"        very obvious diffs,
"        consistency between gui and 256 term,

" theme colors
let s:color0C  = 234 " black 1 (dark)
let s:color1C  = 131 " red 1 (brick)
let s:color2C  = 115 " green 1 (sea green)
let s:color3C  = 187 " yellow 1 (yellow)
let s:color4C  = 60  " blue 1 (dark)
let s:color5C  = 236 " magenta 1 (medium black)
let s:color6C  = 252 " cyan 1 (medium white)
let s:color7C  = 254 " white 1 (light)
let s:color8C  = 238 " black 2 (light)
let s:color9C  = 196 " red 2 (bright)
let s:color10C = 118 " green 2 (bright)
let s:color11C = 180 " yellow 2 (orange)
let s:color12C = 110 " blue 2 (light)
let s:color13C = 138 " magenta 2 (magenta)
let s:color14C = 123 " cyan 2 (cyan)
let s:color15C = 246 " white 2 (dark)

let s:color0G  = "#1c1c1c" " black 1 (dark)
let s:color1G  = "#af5f5f" " red 1 (brick)
let s:color2G  = "#87d7af" " green 1 (sea green)
let s:color3G  = "#d7d7af" " yellow 1 (yellow)
let s:color4G  = "#5f5f87" " blue 1 (dark)
let s:color5G  = "#303030" " magenta 1 (medium black)
let s:color6G  = "#d0d0d0" " cyan 1 (medium white)
let s:color7G  = "#e4e4e4" " white 1 (light)
let s:color8G  = "#444444" " black 2 (light)
let s:color9G  = "#ff0000" " red 2 (bright)
let s:color10G = "#87ff00" " green 2 (bright)
let s:color11G = "#d7af87" " yellow 2 (orange)
let s:color12G = "#87afd7" " blue 2 (light)
let s:color13G = "#af8787" " magenta 2 (magenta)
let s:color14G = "#87ffff" " cyan 2 (cyan)
let s:color15G = "#949494" " white 2 (dark)

" {{{ Set up
set background=dark

" highlight clear removes user colors which is annoying if you use them, for
" example, for your status bar.
" highlight clear
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
    call TungstenG("Conceal", s:color15G, s:color5G, "NONE")
    call TungstenG("Cursor", "", s:color7G, "")
    " call TungstenG("CursorIM", "NONE", s:color8G, "NONE")
    " call TungstenG("CursorIM", "NONE", s:color8G, "NONE")
    call TungstenG("CursorColumn", "NONE", s:color8G, "NONE")
    call TungstenG("CursorLine", "", s:color8G, "NONE")
    " call TungstenG("Directory", "NONE", s:color8G, "NONE")
    call TungstenG("DiffAdd", s:color10G, s:color5G, "NONE")
    call TungstenG("DiffChange", s:color2G, s:color5G, "NONE")
    call TungstenG("DiffDelete", s:color9G, s:color5G, "NONE")
    call TungstenG("DiffText", s:color9G, s:color5G, "NONE")
    call TungstenG("ErrorMsg", s:color1G, s:color0G, "NONE")
    call TungstenG("VertSplit", s:color4G, s:color8G, "NONE")
    call TungstenG("Folded", s:color15G, s:color0G, "NONE")
    call TungstenG("FoldColumn", s:color2G, s:color0G, "NONE")
    " call TungstenG("SignColumn", "NONE", s:color8G, "NONE")
    call TungstenG("IncSearch", s:color5G, s:color3G, "NONE")
    call TungstenG("LineNr", s:color8G, s:color0G, "NONE")
    call TungstenG("CursorLineNr", s:color7G, s:color5G, "NONE")
    call TungstenG("MatchParen", "", s:color0G, "NONE")
    " call TungstenG("ModeMsg", "NONE", s:color8G, "NONE")
    " call TungstenG("MoreMsg", "NONE", s:color8G, "NONE")
    call TungstenG("NonText", s:color8G, s:color5G, "NONE")
    call TungstenG("Normal", s:color6G, s:color5G, "NONE")
    call TungstenG("Pmenu", s:color15G, s:color8G, "NONE")
    call TungstenG("PmenuSel", s:color7G, s:color0G, "NONE")
    call TungstenG("PmenSbar", "", s:color8G, "NONE")
    call TungstenG("PmenuThumb", "", s:color8G, "NONE")
    call TungstenG("Question", s:color6G, s:color8G, "NONE")
    call TungstenG("Search", s:color5G, s:color13G, "NONE")
    call TungstenG("SignColumn", s:color9G, s:color0G, "NONE")
    call TungstenG("SpecialKey", s:color8G, s:color5G, "NONE")
    call TungstenG("SpellBad", s:color13G, "", "undercurl")
    call TungstenG("SpellCap", s:color13G, "", "undercurl")
    " call TungstenG("SpellLocal", "NONE", s:color8G, "NONE")
    " call TungstenG("SpellRare", "NONE", s:color8G, "NONE")
    " call TungstenG("StatusLine", "NONE", s:color8G, "NONE")
    " call TungstenG("StatusLineNC", "NONE", s:color8G, "NONE")
    call TungstenG("TabLine", s:color15G, s:color0G, "NONE")
    call TungstenG("TabLineFill", s:color15G, s:color0G, "NONE")
    call TungstenG("TabLineSel", s:color7G, s:color5G, "NONE")
    call TungstenG("Title", s:color2G, "NONE", "NONE")
    call TungstenG("Visual", "", s:color0G, "NONE")
    " call TungstenG("VisualNOS", "NONE", s:color8G, "NONE")
    call TungstenG("WarningMSG", s:color4G, s:color0G, "NONE")
    " call TungstenG("WildMenu", "NONE", s:color8G, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call TungstenG("Comment", s:color4G, "", "")
    call TungstenG("Constant", s:color11G, "", "")
    call TungstenG("String", s:color2G, "", "")
    call TungstenG("Character", s:color1G, "", "")
    call TungstenG("Number", s:color12G, "", "")
    call TungstenG("Boolean", s:color12G, "", "")
    call TungstenG("Float", s:color12G, "", "")
    call TungstenG("Identifier", s:color2G, "", "NONE")
    call TungstenG("Function", s:color15G, "", "NONE")
    call TungstenG("Statement", s:color11G, "", "")
    call TungstenG("Conditional", s:color3G, "", "")
    call TungstenG("Repeat", s:color3G, "", "")
    call TungstenG("Label", "", "", "")
    call TungstenG("Operator", s:color1G, "", "NONE")
    call TungstenG("Keyword", s:color3G, "", "NONE")
    call TungstenG("Exception", "", "", "NONE")
    call TungstenG("PreProc", s:color14G, "", "")
    call TungstenG("Include", s:color14G, "", "")
    call TungstenG("Define", s:color14G, "", "NONE")
    call TungstenG("Macro", s:color14G, "", "NONE")
    call TungstenG("PreCondit", s:color1G, "", "NONE")
    call TungstenG("Type", s:color15G, "", "NONE")
    call TungstenG("StorageClass", s:color12G, "", "NONE")
    call TungstenG("Structure", "", "", "")
    call TungstenG("Typedef", "", "", "")
    call TungstenG("Special", s:color1G, "", "")
    call TungstenG("SpecialChar", s:color6G, "", "")
    call TungstenG("Tag", "", "", "")
    call TungstenG("Delimiter", s:color15G, "", "")
    call TungstenG("SpecialComment", s:color6G, "", "")
    call TungstenG("Debug", s:color6G, "", "")
    call TungstenG("Underlined",s:color6G, s:color5G, "underline")
    call TungstenG("Error",s:color9G, "", "")
    call TungstenG("Todo", s:color9G, s:color8G, "")
    " }}} Highlight groups
    " {{{ misc
    " TagHighlight
    call TungstenG("LocalVariable", "", "", "NONE")
    call TungstenG("Member", "", "", "NONE")
    " mail
    call TungstenG("mailQuoted1", s:color11G, "", "NONE")
    call TungstenG("mailQuoted2", s:color13G, "", "NONE")
    call TungstenG("mailQuoted3", s:color1G, "", "NONE")
    call TungstenG("mailQuoted4", s:color4G, "", "NONE")
    call TungstenG("mailQuoted5", s:color12G, "", "NONE")
    call TungstenG("mailQuoted6", s:color2G, "", "NONE")
    " status
    call TungstenG("status1", s:color12G, s:color0G, "NONE")
    call TungstenG("status2", s:color11G, s:color8G, "NONE")
    call TungstenG("status3", s:color9G, s:color0G, "NONE")
    " vim
    call TungstenG("vimOption", s:color3G, "", "NONE")
    call TungstenG("qfLineNr", s:color1G, s:color5G, "NONE")
    " ycm
    call TungstenG("YcmErrorSign", s:color9G, s:color0G, "NONE")
    call TungstenG("YcmWarningSign", s:color9G, s:color0G, "NONE")
    call TungstenG("YcmErrorSection", s:color1G, "", "NONE")
    call TungstenG("YcmWarningSection", s:color1G, "", "NONE")
    " }}}
endif

if &t_Co==256
    " {{{ Vim groups
    call TungstenC("ColorColumn", "", s:color8C, "NONE")
    call TungstenC("Conceal", s:color15C, s:color5C, "NONE")
    call TungstenC("Cursor", "", "", "")
    " call Tungsten ("CursorIM", "NONE", s:color8C, "NONE")
    call TungstenC("CursorColumn", "NONE", s:color8C, "NONE")
    call TungstenC("CursorLine", "", s:color8C, "NONE")
    " call TungstenC("Directory", "NONE", s:color8C, "NONE")
    call TungstenC("DiffAdd", s:color10C, s:color5C, "NONE")
    call TungstenC("DiffChange", s:color14C, s:color5C, "NONE")
    call TungstenC("DiffDelete", s:color9C, s:color5C, "NONE")
    call TungstenC("DiffText", s:color9C, s:color5C, "NONE")
    call TungstenC("ErrorMsg", s:color1C, s:color0C, "NONE")
    call TungstenC("VertSplit", s:color4C, s:color8C, "NONE")
    call TungstenC("Folded", s:color15C, s:color0C, "NONE")
    call TungstenC("FoldColumn", s:color2C, s:color0C, "NONE")
    " call TungstenC("SignColumn", "NONE", s:color8C, "NONE")
    call TungstenC("IncSearch", s:color5C, s:color3C, "NONE")
    call TungstenC("LineNr", s:color8C, s:color0C, "NONE")
    call TungstenC("CursorLineNr", s:color7C, s:color5C, "NONE")
    call TungstenC("MatchParen", "", s:color0C, "NONE")
    " call TungstenC("ModeMsg", "NONE", s:color8C, "NONE")
    " call TungstenC("MoreMsg", "NONE", s:color8C, "NONE")
    call TungstenC("NonText", s:color8C, s:color5C, "NONE")
    call TungstenC("Normal", s:color6C, s:color5C, "NONE")
    call TungstenC("Pmenu", s:color15C, s:color8C, "NONE")
    call TungstenC("PmenuSel", s:color7C, s:color0C, "NONE")
    call TungstenC("PmenSbar", "", s:color8C, "NONE")
    call TungstenC("PmenuThumb", "", s:color8C, "NONE")
    call TungstenC("Question", s:color6C, s:color8C, "NONE")
    call TungstenC("Search", s:color5C, s:color13C, "NONE")
    call TungstenC("SignColumn", s:color9C, s:color0C, "NONE")
    call TungstenC("SpecialKey", s:color8C, s:color5C, "NONE")
    call TungstenC("SpellBad", s:color13C, "", "underline")
    call TungstenC("SpellCap", s:color13C, "", "underline")
    " call TungstenC("SpellLocal", "NONE", s:color8C, "NONE")
    " call TungstenC("SpellRare", "NONE", s:color8C, "NONE")
    " call TungstenC("StatusLine", "NONE", s:color8C, "NONE")
    " call TungstenC("StatusLineNC", "NONE", s:color8C, "NONE")
    call TungstenC("TabLine", s:color15C, s:color0C, "NONE")
    call TungstenC("TabLineFill", s:color15C, s:color0C, "NONE")
    call TungstenC("TabLineSel", s:color7C, s:color5C, "NONE")
    call TungstenC("Title", s:color2C, "NONE", "NONE")
    call TungstenC("Visual", "", s:color0C, "NONE")
    " call TungstenC("VisualNOS", "NONE", s:color8C, "NONE")
    call TungstenC("WarningMSG", s:color4C, s:color0C, "NONE")
    " call TungstenC("WildMenu", "NONE", s:color8C, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call TungstenC("Comment", s:color4C, "", "")
    call TungstenC("Constant", s:color11C, "", "")
    call TungstenC("String", s:color2C, "", "")
    call TungstenC("Character", s:color1C, "", "")
    call TungstenC("Number", s:color12C, "", "")
    call TungstenC("Boolean", s:color12C, "", "")
    call TungstenC("Float", s:color12C, "", "")
    call TungstenC("Identifier", s:color2C, "", "NONE")
    call TungstenC("Function", s:color15C, "", "NONE")
    call TungstenC("Statement", s:color11C, "", "")
    call TungstenC("Conditional", s:color3C, "", "")
    call TungstenC("Repeat", s:color3C, "", "")
    call TungstenC("Label", "", "", "")
    call TungstenC("Operator", s:color1C, "", "NONE")
    call TungstenC("Keyword", s:color3C, "", "NONE")
    call TungstenC("Exception", "", "", "NONE")
    call TungstenC("PreProc", s:color14C, "", "")
    call TungstenC("Include", s:color14C, "", "")
    call TungstenC("Define", s:color14C, "", "NONE")
    call TungstenC("Macro", s:color14C, "", "NONE")
    call TungstenC("PreCondit", s:color1C, "", "NONE")
    call TungstenC("Type", s:color15C, "", "NONE")
    call TungstenC("StorageClass", s:color12C, "", "NONE")
    call TungstenC("Structure", "", "", "")
    call TungstenC("Typedef", "", "", "")
    call TungstenC("Special", s:color1C, "", "")
    call TungstenC("SpecialChar", s:color6C, "", "")
    call TungstenC("Tag", "", "", "")
    call TungstenC("Delimiter", s:color15C, "", "")
    call TungstenC("SpecialComment", s:color6C, "", "")
    call TungstenC("Debug", s:color6C, "", "")
    call TungstenC("Underlined",s:color6C, s:color5C, "italic")
    call TungstenC("Error",s:color9C, "", "")
    call TungstenC("Todo", s:color9C, s:color8C, "")
    " }}} Highlight groups
    " {{{ Misc
    " TagHighlight
    call TungstenC("CTagsLocalVariable", "", "", "NONE")
    call TungstenC("CTagsMember", "", "", "NONE")
    " mail
    call TungstenC("mailQuoted1", s:color11C, "", "NONE")
    call TungstenC("mailQuoted2", s:color13C, "", "NONE")
    call TungstenC("mailQuoted3", s:color1C, "", "NONE")
    call TungstenC("mailQuoted4", s:color4C, "", "NONE")
    call TungstenC("mailQuoted5", s:color12C, "", "NONE")
    call TungstenC("mailQuoted6", s:color2C, "", "NONE")
    " senak
    call TungstenC("SneakPluginTarget", s:color2C, s:color0C, "NONE")
    " call TungstenC("SneakPluginScope", s:color
    call TungstenC("SneakStreakTarget", s:color9C, s:color0C, "NONE")
    call TungstenC("SneakStreakMask", s:color12C, s:color0C, "NONE")
    " call TungstenC("SneakStreakStatusLine", s:color
    " status
    call TungstenC("status1", s:color12C, s:color0C, "NONE")
    call TungstenC("status2", s:color11C, s:color8C, "NONE")
    call TungstenC("status3", s:color9C, s:color0C, "NONE")
    " vim
    call TungstenC("vimOption", s:color3C, "", "NONE")
    call TungstenC("qfLineNr", s:color1C, s:color5C, "NONE")
    " ycm
    call TungstenC("YcmErrorSign", s:color1C, s:color0C, "NONE")
    call TungstenC("YcmWarningSign", s:color1C, s:color0C, "NONE")
    call TungstenC("YcmErrorSection", s:color1C, "", "NONE")
    call TungstenC("YcmWarningSection", s:color1C, "", "NONE")
    " }}}
endif

" vim: set fdm=marker:fdl=1
