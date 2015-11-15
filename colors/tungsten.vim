" tungsten.vim a colorscheme for vim
" Maintainer: Michael Lerch (github.com/mdlerch)
" Version: 1.1

" A darkish color scheme for 256 and gui vim.
" Goals: easy on the eyes,
"        non-distracting,
"        eye drawn to important parts,
"        completeness of highlight groups,
"        very obvious diffs,
"        consistency between gui and 256 term,


" black 1 (dark)
" red 1 (brick)
" green 1 (sea green)
" yellow 1 (yellow)
" blue 1 (dark)
" magenta 1 (medium black)
" cyan 1 (medium white)
" white 1 (light)
" black 2 (light)
" red 2 (bright)
" green 2 (bright)
" yellow 2 (orange)
" blue 2 (light)
" magenta 2 (magenta)
" cyan 2 (cyan)
" white 2 (dark)

" theme colors
let s:themecol = [[234, "#1c1c1c"],
               \  [131, "#af5f5f"],
               \  [115, "#87d7af"],
               \  [187, "#d7d7af"],
               \  [60,  "#5f5f87"],
               \  [236, "#303030"],
               \  [252, "#d0d0d0"],
               \  [254, "#e4e4e4"],
               \  [238, "#444444"],
               \  [196, "#ff0000"],
               \  [118, "#87ff00"],
               \  [180, "#d7af87"],
               \  [110, "#87afd7"],
               \  [138, "#af8787"],
               \  [123, "#87ffff"],
               \  [246, "#949494"]]
" {{{ Setup
set background=dark

" highlight clear removes user colors which is annoying if you use them, for
" example, for your status bar.
" highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "tungsten"

" }}}
" {{{ Function

function! Tungsten(group, fg, bg, cterm, gui)
    exec "hi clear " . a:group
    if a:fg =~ '\d'
        exec "hi " . a:group . " ctermfg=" . expand(s:themecol[a:fg][0]) . "guifg=" . expand(s:themecol[a:fg][1])
    elseif a:fg == "NONE"
        exec "hi " . a:group . " ctermfg=NONE" . " guifg=NONE"
    endif
    if a:bg =~ '\d'
        exec "hi " . a:group . " ctermbg=" . expand(s:themecol[a:bg][0])
    elseif a:bg == "NONE"
        exec "hi " . a:group . " ctermbg=NONE" . " guibg=NONE"
    endif
    if a:cterm != "" && a:cterm != "NONE"
        exec "hi " . a:group . " cterm=" . a:cterm
    elseif a:cterm == "NONE"
        exec "hi " . a:group . " cterm=NONE"
    endif
    if a:gui != "" && a:gui != "NONE"
        exec "hi " . a:group . " gui=" . a:gui
    elseif a:gui == "NONE"
        exec "hi " . a:group . " gui=NONE"
    endif
endfunction

" }}}
" {{{ Vim groups

call Tungsten("ColorColumn"    , ""     , 8      , "NONE"      , "NONE")
call Tungsten("Conceal"        , 15     , 5      , "NONE"      , "NONE")
call Tungsten("Cursor"         , ""     , ""     , ""          , "")
" call Tungsten ("CursorIM"    , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("CursorColumn"   , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("CursorLine"     , ""     , 8      , "NONE"      , "NONE")
" call Tungsten("Directory"    , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("DiffAdd"        , 10     , 5      , "NONE"      , "NONE")
call Tungsten("DiffChange"     , 14     , 5      , "NONE"      , "NONE")
call Tungsten("DiffDelete"     , 9      , 5      , "NONE"      , "NONE")
call Tungsten("DiffText"       , 9      , 5      , "NONE"      , "NONE")
call Tungsten("ErrorMsg"       , 1      , 0      , "NONE"      , "NONE")
call Tungsten("VertSplit"      , 4      , 8      , "NONE"      , "NONE")
call Tungsten("Folded"         , 15     , 0      , "NONE"      , "NONE")
call Tungsten("FoldColumn"     , 8      , 0      , "NONE"      , "NONE")
" call Tungsten("SignColumn"   , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("IncSearch"      , 5      , 3      , "NONE"      , "NONE")
call Tungsten("LineNr"         , 8      , 0      , "NONE"      , "NONE")
call Tungsten("CursorLineNr"   , 7      , 5      , "NONE"      , "NONE")
call Tungsten("MatchParen"     , ""     , 0      , "NONE"      , "NONE")
" call Tungsten("ModeMsg"      , "NONE" , 8      , "NONE"      , "NONE")
" call Tungsten("MoreMsg"      , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("NonText"        , 8      , 5      , "NONE"      , "NONE")
call Tungsten("Normal"         , 6      , 5      , "NONE"      , "NONE")
call Tungsten("Pmenu"          , 15     , 8      , "NONE"      , "NONE")
call Tungsten("PmenuSel"       , 7      , 0      , "NONE"      , "NONE")
call Tungsten("PmenuSbar"      , ""     , "NONE" , "NONE"      , "NONE")
call Tungsten("PmenuThumb"     , ""     , "NONE" , "NONE"      , "NONE")
call Tungsten("Question"       , 6      , 8      , "NONE"      , "NONE")
call Tungsten("Search"         , 5      , 13     , "NONE"      , "NONE")
call Tungsten("SignColumn"     , 9      , 0      , "NONE"      , "NONE")
call Tungsten("SpecialKey"     , 8      , 5      , "NONE"      , "NONE")
call Tungsten("SpellBad"       , 13     , ""     , "underline" , "undercurl")
call Tungsten("SpellCap"       , 13     , ""     , "underline" , "undercurl")
" call Tungsten("SpellLocal"   , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("SpellRare"      , 13     , ""     , "NONE"      , "NONE")
" call Tungsten("StatusLine"   , "NONE" , 8      , "NONE"      , "NONE")
" call Tungsten("StatusLineNC" , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("TabLine"        , 15     , 0      , "NONE"      , "NONE")
call Tungsten("TabLineFill"    , 15     , 0      , "NONE"      , "NONE")
call Tungsten("TabLineSel"     , 7      , 5      , "NONE"      , "NONE")
call Tungsten("Title"          , 2      , "NONE" , "NONE"      , "NONE")
call Tungsten("Visual"         , ""     , 0      , "NONE"      , "NONE")
" call Tungsten("VisualNOS"    , "NONE" , 8      , "NONE"      , "NONE")
call Tungsten("WarningMSG"     , 4      , 0      , "NONE"      , "NONE")
" call Tungsten("WildMenu"     , "NONE" , 8      , "NONE"      , "NONE")
" }}} Vim groups
" {{{ Highlight groups

call Tungsten("Comment"        , 4      , ""     , "NONE"      , "NONE")
call Tungsten("Constant"       , 11     , ""     , "NONE"      , "NONE")
call Tungsten("String"         , 2      , ""     , "NONE"      , "NONE")
call Tungsten("Character"      , 1      , ""     , "NONE"      , "NONE")
call Tungsten("Number"         , 12     , ""     , "NONE"      , "NONE")
call Tungsten("Boolean"        , 12     , ""     , "NONE"      , "NONE")
call Tungsten("Float"          , 12     , ""     , "NONE"      , "NONE")
call Tungsten("Identifier"     , 2      , ""     , "NONE"      , "NONE")
call Tungsten("Function"       , 15     , ""     , "NONE"      , "NONE")
call Tungsten("Statement"      , 11     , ""     , "NONE"      , "NONE")
call Tungsten("Conditional"    , 3      , ""     , "NONE"      , "NONE")
call Tungsten("Repeat"         , 3      , ""     , "NONE"      , "NONE")
call Tungsten("Label"          , ""     , ""     , "NONE"      , "NONE")
call Tungsten("Operator"       , 1      , ""     , "NONE"      , "NONE")
call Tungsten("Keyword"        , 3      , ""     , "NONE"      , "NONE")
call Tungsten("Exception"      , ""     , ""     , "NONE"      , "NONE")
call Tungsten("PreProc"        , 14     , ""     , "NONE"      , "NONE")
call Tungsten("Include"        , 14     , ""     , "NONE"      , "NONE")
call Tungsten("Define"         , 14     , ""     , "NONE"      , "NONE")
call Tungsten("Macro"          , 14     , ""     , "NONE"      , "NONE")
call Tungsten("PreCondit"      , 1      , ""     , "NONE"      , "NONE")
call Tungsten("Type"           , 11     , ""     , "NONE"      , "NONE")
call Tungsten("StorageClass"   , 12     , ""     , "NONE"      , "NONE")
call Tungsten("Structure"      , ""     , ""     , "NONE"      , "NONE")
call Tungsten("Typedef"        , ""     , ""     , "NONE"      , "NONE")
call Tungsten("Special"        , 1      , ""     , "NONE"      , "NONE")
call Tungsten("SpecialChar"    , 6      , ""     , "NONE"      , "NONE")
call Tungsten("Tag"            , ""     , ""     , "NONE"      , "NONE")
call Tungsten("Delimiter"      , 15     , ""     , "NONE"      , "NONE")
call Tungsten("SpecialComment" , 6      , ""     , "NONE"      , "NONE")
call Tungsten("Debug"          , 6      , ""     , "NONE"      , "NONE")
call Tungsten("Underlined"     , 6      , 5      , "underline" , "underline")
call Tungsten("Error"          , 9      , ""     , "NONE"      , "NONE")
call Tungsten("Todo"           , 9      , 8      , "NONE"      , "NONE")

" }}} Highlight groups
" {{{ Misc

" TagHighlight
call Tungsten("CTagsLocalVariable" , "" , "" , "NONE" , "NONE")
call Tungsten("CTagsMember"        , "" , "" , "NONE" , "NONE")
" mail
call Tungsten("mailQuoted1" , 11 , "" , "NONE" , "NONE")
call Tungsten("mailQuoted2" , 13 , "" , "NONE" , "NONE")
call Tungsten("mailQuoted3" , 1  , "" , "NONE" , "NONE")
call Tungsten("mailQuoted4" , 4  , "" , "NONE" , "NONE")
call Tungsten("mailQuoted5" , 12 , "" , "NONE" , "NONE")
call Tungsten("mailQuoted6" , 2  , "" , "NONE" , "NONE")
" Nvim-R / Vim-R-plugin
call Tungsten("routInput" , 3 , "" , "NONE" , "NONE")
" status
call Tungsten("status1" , 12 , 0 , "NONE" , "NONE")
call Tungsten("status2" , 11 , 8 , "NONE" , "NONE")
call Tungsten("status3" , 9  , 0 , "NONE" , "NONE")
" vim
call Tungsten("vimOption" , 3 , "" , "NONE" , "NONE")
call Tungsten("qfLineNr"  , 1 , 5  , "NONE" , "NONE")
" ycm
call Tungsten("YcmErrorSign"      , 1 , 0  , "NONE" , "NONE")
call Tungsten("YcmWarningSign"    , 1 , 0  , "NONE" , "NONE")
call Tungsten("YcmErrorSection"   , 1 , "" , "NONE" , "NONE")
call Tungsten("YcmWarningSection" , 1 , "" , "NONE" , "NONE")

" }}}

" vim: set fdm=marker:fdl=1
