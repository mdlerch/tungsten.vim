" =============================================================================
" Filename: autoload/lightline/colorscheme/solarized_dark.vim
" Version: 0.0
" Author: itchyny
" License: MIT License
" Last Change: 2014/01/02 23:40:14.
" =============================================================================

let s:color0  = [ '#ffffff', 234 ] " dark black
let s:color1  = [ '#ffffff', 236 ] " medium black
let s:color2  = [ '#ffffff', 238 ] " light black
let s:color3  = [ '#ffffff', 246 ] " dark white
let s:color4  = [ '#ffffff', 252 ] " medium white
let s:color5  = [ '#ffffff', 254 ] " light white
let s:color6  = [ '#ffffff', 196 ] " bright red
let s:color7  = [ '#ffffff', 131 ] " brick red
let s:color8  = [ '#ffffff', 180 ] " orange
let s:color9 = [ '#ffffff', 187 ] " yellow
let s:color10 = [ '#ffffff', 118 ] " neon green
let s:color11 = [ '#ffffff', 77  ] " green
let s:color12 = [ '#ffffff', 115 ] " sea green
let s:color13 = [ '#ffffff', 110 ] " blue
let s:color14 = [ '#ffffff', 60  ] " dark blue
let s:color15 = [ '#ffffff', 138 ] " purple


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:color4, s:color0 ], [ s:color4, s:color1 ] ]
let s:p.normal.right = [ [ s:color4, s:color3 ], [ s:color0, s:color4 ] ]
let s:p.normal.middle = [ [ s:color3, s:color0 ] ]
let s:p.insert.left = [ [ s:color2, s:color13 ], [ s:color4, s:color1 ] ]
let s:p.insert.middle = [ [s:color2, s:color13] ]
let s:p.replace.left = [ [ s:color4, s:color15 ], [ s:color4, s:color1 ] ]
let s:p.visual.left = [ [ s:color4, s:color7 ], [ s:color4, s:color1 ] ]
let s:p.visual.middle = [ [ s:color3, s:color7 ] ]
let s:p.inactive.right = [ [ s:color3, s:color0 ], [ s:color2, s:color0 ] ]
let s:p.inactive.left =  [ [ s:color2, s:color0 ], [ s:color2, s:color0 ] ]
let s:p.inactive.middle = [ [ s:color2, s:color0 ] ]
let s:p.tabline.left = [ [ s:color2, s:color0 ] ]
let s:p.tabline.tabsel = [ [ s:color4, s:color2 ] ]
let s:p.tabline.middle = [ [ s:color4, s:color0 ] ]
let s:p.tabline.right = [ [ s:color2, s:color0 ] ]
let s:p.normal.error = [ [ s:color7, s:color0 ] ]
let s:p.normal.warning = [ [ s:color7, s:color0 ] ]

let g:lightline#colorscheme#tungsten#palette = lightline#colorscheme#flatten(s:p)
