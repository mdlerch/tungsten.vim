" tungsten.vim a colorscheme for vim
" Maintainer: Michael Lerch (github.com/mdlerch)
" Version: 1.2

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

" normal: 6, 5

" theme colors [ [ 256 , true ] ]
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

function! s:Tungsten(group, fg, bg, cterm, gui)
    exec "hi clear " . a:group
    if a:fg =~ '\d'
        exec "hi " . a:group . " ctermfg=" . s:themecol[a:fg][0] . " guifg=" . s:themecol[a:fg][1]
    elseif a:fg == "NONE"
        exec "hi " . a:group . " ctermfg=NONE" . " guifg=NONE"
    endif
    if a:bg =~ '\d'
        exec "hi " . a:group . " ctermbg=" . s:themecol[a:bg][0] . " guibg=" . s:themecol[a:bg][1]
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

"              Group             fg       bg       term          gui
call s:Tungsten("ColorColumn"    , ""     , 8      , "NONE"      , "NONE")
call s:Tungsten("Conceal"        , 15     , 5      , "NONE"      , "NONE")
call s:Tungsten("Cursor"         , ""     , ""     , ""          , "")
" call s:Tungsten ("CursorIM"    , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("CursorColumn"   , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("CursorLine"     , ""     , 8      , "NONE"      , "NONE")
" call s:Tungsten("Directory"    , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("DiffAdd"        , 10     , 5      , "NONE"      , "NONE")
call s:Tungsten("DiffChange"     , 14     , 5      , "NONE"      , "NONE")
call s:Tungsten("DiffDelete"     , 9      , 5      , "NONE"      , "NONE")
call s:Tungsten("DiffText"       , 9      , 5      , "NONE"      , "NONE")
call s:Tungsten("ErrorMsg"       , 1      , 0      , "NONE"      , "NONE")
call s:Tungsten("VertSplit"      , 4      , 8      , "NONE"      , "NONE")
call s:Tungsten("Folded"         , 15     , 0      , "NONE"      , "NONE")
call s:Tungsten("FoldColumn"     , 8      , 0      , "NONE"      , "NONE")
" call s:Tungsten("SignColumn"   , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("IncSearch"      , 5      , 3      , "NONE"      , "NONE")
call s:Tungsten("LineNr"         , 8      , 0      , "NONE"      , "NONE")
call s:Tungsten("CursorLineNr"   , 7      , 5      , "NONE"      , "NONE")
call s:Tungsten("MatchParen"     , ""     , 0      , "NONE"      , "NONE")
" call s:Tungsten("ModeMsg"      , "NONE" , 8      , "NONE"      , "NONE")
" call s:Tungsten("MoreMsg"      , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("NonText"        , 8      , 5      , "NONE"      , "NONE")
call s:Tungsten("Normal"         , 6      , 5      , "NONE"      , "NONE")
call s:Tungsten("Pmenu"          , 15     , 8      , "NONE"      , "NONE")
call s:Tungsten("PmenuSel"       , 7      , 0      , "NONE"      , "NONE")
call s:Tungsten("PmenuSbar"      , ""     , "NONE" , "NONE"      , "NONE")
call s:Tungsten("PmenuThumb"     , ""     , "NONE" , "NONE"      , "NONE")
call s:Tungsten("Question"       , 6      , 8      , "NONE"      , "NONE")
call s:Tungsten("Search"         , 5      , 13     , "NONE"      , "NONE")
call s:Tungsten("SignColumn"     , 9      , 0      , "NONE"      , "NONE")
call s:Tungsten("SpecialKey"     , 8      , 5      , "NONE"      , "NONE")
call s:Tungsten("SpellBad"       , 13     , ""     , "underline" , "undercurl")
call s:Tungsten("SpellCap"       , 13     , ""     , "underline" , "undercurl")
" call s:Tungsten("SpellLocal"   , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("SpellRare"      , 13     , ""     , "NONE"      , "NONE")
" call s:Tungsten("StatusLine"   , "NONE" , 8      , "NONE"      , "NONE")
" call s:Tungsten("StatusLineNC" , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("TabLine"        , 15     , 0      , "NONE"      , "NONE")
call s:Tungsten("TabLineFill"    , 15     , 0      , "NONE"      , "NONE")
call s:Tungsten("TabLineSel"     , 7      , 5      , "NONE"      , "NONE")
call s:Tungsten("Title"          , 2      , "NONE" , "NONE"      , "NONE")
call s:Tungsten("Visual"         , ""     , 0      , "NONE"      , "NONE")
" call s:Tungsten("VisualNOS"    , "NONE" , 8      , "NONE"      , "NONE")
call s:Tungsten("WarningMSG"     , 4      , 0      , "NONE"      , "NONE")
" call s:Tungsten("WildMenu"     , "NONE" , 8      , "NONE"      , "NONE")
" }}} Vim groups
" {{{ Highlight groups

call s:Tungsten("Comment"        , 4      , ""     , "NONE"      , "NONE")
call s:Tungsten("Constant"       , 11     , ""     , "NONE"      , "NONE")
call s:Tungsten("String"         , 2      , ""     , "NONE"      , "NONE")
call s:Tungsten("Character"      , 1      , ""     , "NONE"      , "NONE")
call s:Tungsten("Number"         , 12     , ""     , "NONE"      , "NONE")
call s:Tungsten("Boolean"        , 12     , ""     , "NONE"      , "NONE")
call s:Tungsten("Float"          , 12     , ""     , "NONE"      , "NONE")
call s:Tungsten("Identifier"     , 2      , ""     , "NONE"      , "NONE")
call s:Tungsten("Function"       , 15     , ""     , "NONE"      , "NONE")
call s:Tungsten("Statement"      , 11     , ""     , "NONE"      , "NONE")
call s:Tungsten("Conditional"    , 3      , ""     , "NONE"      , "NONE")
call s:Tungsten("Repeat"         , 3      , ""     , "NONE"      , "NONE")
call s:Tungsten("Label"          , ""     , ""     , "NONE"      , "NONE")
call s:Tungsten("Operator"       , 1      , ""     , "NONE"      , "NONE")
call s:Tungsten("Keyword"        , 3      , ""     , "NONE"      , "NONE")
call s:Tungsten("Exception"      , 13     , ""     , "NONE"      , "NONE")
call s:Tungsten("PreProc"        , 14     , ""     , "NONE"      , "NONE")
call s:Tungsten("Include"        , 14     , ""     , "NONE"      , "NONE")
call s:Tungsten("Define"         , 14     , ""     , "NONE"      , "NONE")
call s:Tungsten("Macro"          , 14     , ""     , "NONE"      , "NONE")
call s:Tungsten("PreCondit"      , 1      , ""     , "NONE"      , "NONE")
call s:Tungsten("Type"           , 11     , ""     , "NONE"      , "NONE")
call s:Tungsten("StorageClass"   , 12     , ""     , "NONE"      , "NONE")
call s:Tungsten("Structure"      , ""     , ""     , "NONE"      , "NONE")
call s:Tungsten("Typedef"        , ""     , ""     , "NONE"      , "NONE")
call s:Tungsten("Special"        , 1      , ""     , "NONE"      , "NONE")
call s:Tungsten("SpecialChar"    , 6      , ""     , "NONE"      , "NONE")
call s:Tungsten("Tag"            , ""     , ""     , "NONE"      , "NONE")
call s:Tungsten("Delimiter"      , 15     , ""     , "NONE"      , "NONE")
call s:Tungsten("SpecialComment" , 6      , ""     , "NONE"      , "NONE")
call s:Tungsten("Debug"          , 6      , ""     , "NONE"      , "NONE")
call s:Tungsten("Underlined"     , 6      , 5      , "underline" , "underline")
call s:Tungsten("Error"          , 9      , ""     , "NONE"      , "NONE")
call s:Tungsten("Todo"           , 9      , 8      , "NONE"      , "NONE")

" }}} Highlight groups
" {{{ Treesitter groups

" General
call s:Tungsten("@variable"              , 6  , "" , "NONE" , "NONE") " same as Normal — plain identifiers
call s:Tungsten("@variable.builtin"      , 12 , "" , "NONE" , "NONE") " self/this → steel blue like Number
call s:Tungsten("@variable.parameter"    , 6  , "" , "NONE" , "NONE") " fn params — keep neutral
call s:Tungsten("@variable.member"       , 6  , "" , "NONE" , "NONE") " struct fields — keep neutral
call s:Tungsten("@constant"              , 11 , "" , "NONE" , "NONE") " → Constant (warm tan)
call s:Tungsten("@constant.builtin"      , 11 , "" , "NONE" , "NONE") " true/false/nil → warm tan
call s:Tungsten("@constant.macro"        , 14 , "" , "NONE" , "NONE") " → PreProc (cyan)
call s:Tungsten("@module"                , 6  , "" , "NONE" , "NONE") " namespaces — neutral
call s:Tungsten("@label"                 , 3  , "" , "NONE" , "NONE") " → Keyword color (muted yellow)

" Strings
call s:Tungsten("@string"                , 2  , "" , "NONE" , "NONE") " → String (sea green)
call s:Tungsten("@string.escape"         , 14 , "" , "NONE" , "NONE") " escape sequences → cyan (stands out)
call s:Tungsten("@string.special"        , 14 , "" , "NONE" , "NONE") " regex/special strings → cyan
call s:Tungsten("@character"             , 1  , "" , "NONE" , "NONE") " → Character (brick red)
call s:Tungsten("@number"                , 12 , "" , "NONE" , "NONE") " → Number (steel blue)
call s:Tungsten("@number.float"          , 12 , "" , "NONE" , "NONE") " → Float (steel blue)
call s:Tungsten("@boolean"               , 12 , "" , "NONE" , "NONE") " → Boolean (steel blue)

" Functions
call s:Tungsten("@function"              , 7  , "" , "NONE" , "NONE") " → Function (near white)
call s:Tungsten("@function.builtin"      , 15 , "" , "NONE" , "NONE") " builtins slightly dimmer grey
call s:Tungsten("@function.macro"        , 14 , "" , "NONE" , "NONE") " macros → cyan (PreProc)
call s:Tungsten("@function.call"         , 7  , "" , "NONE" , "NONE") " call sites same as definition
call s:Tungsten("@function.method"       , 7  , "" , "NONE" , "NONE") " methods → Function
call s:Tungsten("@function.method.call"  , 7  , "" , "NONE" , "NONE")
call s:Tungsten("@constructor"           , 11 , "" , "NONE" , "NONE") " constructors → Type color (warm tan)

" Keywords
call s:Tungsten("@keyword"               , 3  , "" , "NONE" , "NONE") " → Keyword (muted yellow)
call s:Tungsten("@keyword.import"        , 14 , "" , "NONE" , "NONE") " import/include → PreProc (cyan)
call s:Tungsten("@keyword.modifier"      , 3  , "" , "NONE" , "NONE") " static/const/mut → muted yellow
call s:Tungsten("@keyword.return"        , 3  , "" , "NONE" , "NONE") " return → muted yellow
call s:Tungsten("@keyword.operator"      , 1  , "" , "NONE" , "NONE") " and/or/not → brick (Operator)
call s:Tungsten("@keyword.exception"     , 13 , "" , "NONE" , "NONE") " try/catch → dusty rose (Exception)
call s:Tungsten("@keyword.conditional"   , 3  , "" , "NONE" , "NONE") " if/else → muted yellow
call s:Tungsten("@keyword.repeat"        , 3  , "" , "NONE" , "NONE") " for/while → muted yellow
call s:Tungsten("@keyword.type"          , 11 , "" , "NONE" , "NONE") " type/struct → warm tan (Type)

" Types
call s:Tungsten("@type"                  , 11 , "" , "NONE" , "NONE") " → Type (warm tan)
call s:Tungsten("@type.builtin"          , 11 , "" , "NONE" , "NONE") " int/str builtins → warm tan
call s:Tungsten("@type.definition"       , 11 , "" , "NONE" , "NONE")
call s:Tungsten("@attribute"             , 14 , "" , "NONE" , "NONE") " decorators/annotations → cyan

" Operators & Punctuation
call s:Tungsten("@operator"              , 1  , "" , "NONE" , "NONE") " → Operator (brick red)
call s:Tungsten("@punctuation.delimiter" , 15 , "" , "NONE" , "NONE") " , ; . → mid grey
call s:Tungsten("@punctuation.bracket"   , 15 , "" , "NONE" , "NONE") " ( ) [ ] { } → mid grey
call s:Tungsten("@punctuation.special"   , 14 , "" , "NONE" , "NONE") " interpolation braces → cyan

" Comments
call s:Tungsten("@comment"               , 4  , "" , "NONE" , "NONE") " → Comment (slate blue)
call s:Tungsten("@comment.todo"          , 9  , 8  , "NONE" , "NONE") " TODO → Todo group colors
call s:Tungsten("@comment.error"         , 9  , "" , "NONE" , "NONE") " FIXME/BUG → bright red
call s:Tungsten("@comment.warning"       , 11 , "" , "NONE" , "NONE") " WARN → warm tan
call s:Tungsten("@comment.note"          , 12 , "" , "NONE" , "NONE") " NOTE/INFO → steel blue

" Tags (HTML/XML)
call s:Tungsten("@tag"                   , 3  , "" , "NONE" , "NONE") " tag names → muted yellow
call s:Tungsten("@tag.attribute"         , 2  , "" , "NONE" , "NONE") " tag attributes → sea green
call s:Tungsten("@tag.delimiter"         , 15 , "" , "NONE" , "NONE") " < > / → mid grey

" Markdown / Markup
call s:Tungsten("@markup.heading"          , 7  , "" , "NONE"      , "NONE")      " headings → near white (Title-like)
call s:Tungsten("@markup.heading.1"        , 7  , "" , "bold"      , "bold")      " H1 → near white bold
call s:Tungsten("@markup.heading.2"        , 6  , "" , "NONE"      , "NONE")      " H2 → light grey
call s:Tungsten("@markup.heading.3"        , 15 , "" , "NONE"      , "NONE")      " H3 → mid grey
call s:Tungsten("@markup.heading.4"        , 15 , "" , "NONE"      , "NONE")      " H4 → mid grey
call s:Tungsten("@markup.heading.5"        , 8  , "" , "NONE"      , "NONE")      " H5 → dark grey
call s:Tungsten("@markup.heading.6"        , 8  , "" , "NONE"      , "NONE")      " H6 → dark grey
call s:Tungsten("@markup.raw"              , 2  , "" , "NONE"      , "NONE")      " inline code → sea green (like String)
call s:Tungsten("@markup.raw.block"        , 2  , "" , "NONE"      , "NONE")      " code blocks → sea green
call s:Tungsten("@markup.quote"            , 12  , "" , "NONE"      , "NONE")      " > blockquotes → steel blue (Comment-like)
call s:Tungsten("@markup.math"             , 14 , "" , "NONE"      , "NONE")      " math → cyan
call s:Tungsten("@markup.link"             , 12 , "" , "NONE"      , "NONE")      " link text → steel blue
call s:Tungsten("@markup.link.url"         , 4  , "" , "underline" , "underline") " URLs → slate, underlined
call s:Tungsten("@markup.link.label"       , 14 , "" , "NONE"      , "NONE")      " ref labels → cyan blue
call s:Tungsten("@markup.list"             , 11 , "" , "NONE"      , "NONE")      " list bullets/numbers → warm tan
call s:Tungsten("@markup.list.checked"     , 2  , "" , "NONE"      , "NONE")      " [x] → sea green
call s:Tungsten("@markup.list.unchecked"   , 15 , "" , "NONE"      , "NONE")      " [ ] → mid grey
call s:Tungsten("@markup.strong"           , 7  , "" , "bold"      , "bold")      " **bold** → near white bold
call s:Tungsten("@markup.italic"           , 6  , "" , "italic"    , "italic")    " _italic_ → light grey italic
call s:Tungsten("@markup.strikethrough"    , 8  , "" , "NONE"      , "NONE")      " ~~strike~~ → dark grey

" LSP Semantic Tokens
call s:Tungsten("@lsp.type.class"          , 11 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.decorator"      , 14 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.enum"           , 11 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.enumMember"     , 12 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.function"       , 7  , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.interface"      , 11 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.macro"          , 14 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.method"         , 7  , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.namespace"      , 6  , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.parameter"      , 6  , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.property"       , 6  , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.struct"         , 11 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.type"           , 11 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.type.variable"       , 6  , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.mod.readonly"        , 12 , "" , "NONE" , "NONE")
call s:Tungsten("@lsp.mod.deprecated"      , 8  , "" , "NONE" , "NONE")

" }}} Treesitter groups
" {{{ Misc

" TagHighlight
call s:Tungsten("CTagsLocalVariable" , "" , "" , "NONE" , "NONE")
call s:Tungsten("CTagsMember"        , "" , "" , "NONE" , "NONE")
" mail
call s:Tungsten("mailQuoted1" , 11 , "" , "NONE" , "NONE")
call s:Tungsten("mailQuoted2" , 13 , "" , "NONE" , "NONE")
call s:Tungsten("mailQuoted3" , 1  , "" , "NONE" , "NONE")
call s:Tungsten("mailQuoted4" , 4  , "" , "NONE" , "NONE")
call s:Tungsten("mailQuoted5" , 12 , "" , "NONE" , "NONE")
call s:Tungsten("mailQuoted6" , 2  , "" , "NONE" , "NONE")
" Nvim-R / Vim-R-plugin
call s:Tungsten("routInput" , 3 , "" , "NONE" , "NONE")
" status
call s:Tungsten("status1" , 12 , 0 , "NONE" , "NONE")
call s:Tungsten("status2" , 11 , 8 , "NONE" , "NONE")
call s:Tungsten("status3" , 9  , 0 , "NONE" , "NONE")
" vim
call s:Tungsten("vimOption" , 3 , "" , "NONE" , "NONE")
call s:Tungsten("qfLineNr"  , 1 , 5  , "NONE" , "NONE")
" yaml
call s:Tungsten("yamlKey"           , 11 , ""  , "NONE" , "NONE")
" ycm
call s:Tungsten("YcmErrorSign"      , 1 , 0  , "NONE" , "NONE")
call s:Tungsten("YcmWarningSign"    , 1 , 0  , "NONE" , "NONE")
call s:Tungsten("YcmErrorSection"   , 1 , "" , "NONE" , "NONE")
call s:Tungsten("YcmWarningSection" , 1 , "" , "NONE" , "NONE")


" }}}

" vim: set fdm=marker:fdl=1
