" Vim Color File
" Name:       petit_bateau.vim
" Version:    0.1
" Maintainer:	Mizux (mizux.dev@gmail.com)
" License:    The MIT License (MIT)

" Description:
"   A dark theme based on Brittany.

hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name='petit_bateau'

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

let g:background='dark'

" Colors
let s:true_black      = { "gui": "#000000", "cterm": "0"   }
let s:black           = { "gui": "#101010", "cterm": "232" }
let s:subtle_black    = { "gui": "#202020", "cterm": "234" }
let s:light_black     = { "gui": "#303030", "cterm": "236" }

let s:dark_grey       = { "gui": "#585858", "cterm": "240" }
let s:grey            = { "gui": "#767676", "cterm": "243" }
let s:light_grey      = { "gui": "#aaaaaa", "cterm": "252" }

let s:dark_white      = { "gui": "#d9d9d9", "cterm": "253" }
let s:white           = { "gui": "#f1f1f1", "cterm": "255" }
let s:true_white      = { "gui": "#ffffff", "cterm": "231" }

let s:dark_red        = { "gui": "#5f0000", "cterm": "52"  }
let s:red             = { "gui": "#870000", "cterm": "88"  }
let s:light_red       = { "gui": "#af0000", "cterm": "124" }

let s:dark_green      = { "gui": "#005f00", "cterm": "22"  }
let s:green           = { "gui": "#008700", "cterm": "28"  }
let s:light_green     = { "gui": "#00af00", "cterm": "34"  }

let s:dark_marine     = { "gui": "#020210", "cterm": "232" }
let s:marine          = { "gui": "#040520", "cterm": "17"  }
let s:light_marine    = { "gui": "#081040", "cterm": "19"  }

let s:dark_wood       = { "gui": "#3d290d", "cterm": "94"  }
let s:wood            = { "gui": "#5d492d", "cterm": "94"  }
let s:light_wood      = { "gui": "#6d593d", "cterm": "94"  }

let s:dark_blue       = { "gui": "#005bc0", "cterm": "26"  }
let s:blue            = { "gui": "#008ec4", "cterm": "32"  }
let s:light_blue      = { "gui": "#20bbfc", "cterm": "12"  }

let s:dark_yellow     = { "gui": "#6f6f00", "cterm": "3" }
let s:yellow          = { "gui": "#afaf00", "cterm": "142" }
let s:light_yellow    = { "gui": "#ffff00", "cterm": "11" }

let s:indigo          = { "gui": "#5f0087", "cterm": "55"  }
let s:purple          = { "gui": "#8700af", "cterm": "91"  }
let s:magenta         = { "gui": "#d700af", "cterm": "163" }
let s:fuchsia         = { "gui": "#ff00ff", "cterm": "13"  }

let s:dark_cyan       = { "gui": "#20a5ba", "cterm": "6"   }
let s:cyan            = { "gui": "#4fb8cc", "cterm": "14"  }
let s:light_cyan      = { "gui": "#b6d6fd", "cterm": "153" }

let s:olive           = { "gui": "#5f5f00", "cterm": "58" }
let s:orange          = { "gui": "#ff6000", "cterm": "166" }

let s:pink            = { "gui": "#ff9cd5", "cterm": "175" }

let s:dark_turquoise  = { "gui": "#005f5f", "cterm": "23"  }
let s:turquoise       = { "gui": "#008080", "cterm": "6"   }
let s:light_turquoise = { "gui": "#008787", "cterm": "30"  }

let s:dark_sky        = { "gui": "#005f87", "cterm": "24"  }
let s:sky             = { "gui": "#0087d7", "cterm": "32"  }
let s:light_sky       = { "gui": "#5fafd7", "cterm": "74"  }


let s:fg              = s:light_grey
let s:light_fg        = s:dark_white
let s:bg              = s:marine
let s:light_bg        = s:light_marine
let s:code_bg         = s:bg
let s:sp_un           = 'undercurl'
"let s:sp_un           = 'underline'

" Default Colors
call s:h("Normal",    {"fg": s:fg,      "bg": s:bg})
call s:h("NonText",   {"fg": s:fg,      "bg": s:dark_marine}) " end file
call s:h("Directory", {"fg": s:light_fg,  "gui": "bold", "cterm": "bold"}) " NerdTree Directory
call s:h("Title",     {"fg": s:yellow, "gui": "bold", "cterm": "bold"}) " NerdTree Executable

call s:h("Cursor",      {"fg": s:bg, "bg": s:fg})
call s:h("lCursor",     {"fg": s:bg, "bg": s:fg})
call s:h("CursorLine",  {"bg": s:light_bg})
call s:h("CursorColumn",{"bg": s:light_bg})
call s:h("ColorColumn", {"bg": s:light_bg})

call s:h("Visual",     {"fg": s:light_fg, "bg": s:dark_blue})
call s:h("MatchParen", {"fg": s:light_fg, "bg": s:dark_blue,  "gui": "bold", "cterm": "bold"})
call s:h("Folded",     {"fg": s:light_fg, "bg": s:dark_blue})

" Search
call s:h("Search",    {"fg": s:dark_marine, "bg": s:light_blue, "gui": "bold,underline", "cterm": "bold,underline"})
call s:h("IncSearch", {"fg": s:light_fg, "bg": s:green,   "gui": "bold",           "cterm": "bold"})

" Window Elements
"call s:h("LineNr",      {"fg": s:fg,       "bg": s:dark_wood})
call s:h("LineNr",      {"fg": s:dark_marine, "bg": s:light_fg})
call s:h("StatusLine",  {"fg": s:fg,       "bg": s:dark_marine})
call s:h("StatusLineNC",{"fg": s:light_fg, "bg": s:light_bg})
call s:h("VertSplit",   {"fg": s:light_red, "bg": s:light_fg})

" Preproc
call s:h("PreProc", {"fg": s:light_wood,  "gui": "bold", "cterm": "bold"})
hi! link Include    PreProc
hi! link Define     PreProc
hi! link Macro      PreProc
hi! link PreCondit  PreProc

" Keyword
call s:h("Statement", {"fg": s:light_fg, "gui": "bold", "cterm": "bold"}) " if for while
hi! link Conditonal   Statement
hi! link Repeat       Statement
"call s:h("Label", {"fg": s:light_fg, "gui": "bold", "cterm": "bold"})
hi! link Operator     Statement " {, (, + - *...
"hi! link Keyword      Statement
"hi! link Exception    Statement

" Type
call s:h("Type",      {"fg": s:light_fg, "gui": "bold", "cterm": "bold"}) " void bool char int
hi! link Typedef      Type
hi! link Structure    Type " class struct
hi! link StorageClass Type
hi! link Identifier   Type " rb: @foo, make: $(FOO)
hi! link Function     Type

" Primitives
call s:h("Constant", {"fg": s:light_yellow, "gui": "bold", "cterm": "bold"})
call s:h("Boolean",  {"fg": s:light_yellow, "gui": "bold", "cterm": "bold"})
call s:h("Number",   {"fg": s:yellow,  "gui": "bold", "cterm": "bold"})
call s:h("Float",    {"fg": s:yellow, "gui": "bold", "cterm": "bold"})
call s:h("String",   {"fg": s:light_yellow, "gui": "italic"               })

" Specials
call s:h("Special", {"fg": s:light_fg, "gui": "bold", "cterm": "bold"})
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Special

call s:h("Debug", {"fg": s:fg, "bg": s:orange})
call s:h("Error", {"fg": s:fg, "bg": s:red})

call s:h("WildMenu",   {"fg": s:light_fg, "bg": s:light_bg})
call s:h("ModeMsg",    {"fg": s:fg,       "bg": s:bg, "gui": "bold", "cterm": "bold"}) " CMake commands options
call s:h("MoreMsg",    {"fg": s:fg,       "bg": s:bg, "gui": "bold", "cterm": "bold"})
call s:h("WarningMsg", {"fg": s:magenta,  "bg": s:bg }) " CMake generator expression
call s:h("ErrorMsg",   {"fg": s:fg,       "bg": s:red})

" Code comment
call s:h("Todo",           {"fg": s:fg, "bg": s:red, "gui": "bold", "cterm": "bold"})
call s:h("Comment",        {"fg": s:light_wood, "gui": "italic"               })
call s:h("SpecialComment", {"fg": s:light_wood, "gui": "bold", "cterm": "bold"})
" Doxygen colors
hi! def link doxygenBrief   Comment
hi! def link doxygenComment Comment
hi! def link doxygenBrief   Comment
hi! def link doxygenComment Comment " //! /*! *
hi! def link doxygenSpecialOneLineDesc     Comment
hi! def link doxygenSpecialTypeOneLineDesc Comment
hi! def link doxygenSpecial   SpecialComment " @
hi! def link doxygenParam     SpecialComment " brief param return
hi! def link doxygenBOther    SpecialComment " file
hi! def link doxygenParamName SpecialComment

" Spell
call s:h("SpellBad",   {"fg": s:red,         "sp": s:red        , "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellCap",   {"fg": s:light_green, "sp": s:light_green, "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellRare",  {"fg": s:fuchsia,     "sp": s:fuchsia    , "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellLocal", {"fg": s:dark_green,  "sp": s:dark_green , "gui": s:sp_un, "cterm": s:sp_un})

" Diff
call s:h("DiffChange", {"fg": s:light_fg, "bg": s:dark_red})
call s:h("DiffText",   {"fg": s:light_fg, "bg": s:dark_red})
call s:h("DiffAdd",    {"fg": s:light_fg, "bg": s:dark_green})
call s:h("DiffDelete", {"fg": s:dark_red, "bg": s:light_bg})
" Signify, git-gutter
hi link SignifySignAdd         DiffAdd
hi link SignifySignDelete      DiffDelete
hi link SignifySignChange      DiffChange
hi link GitGutterAdd           DiffAdd
hi link GitGutterDelete        DiffDelete
hi link GitGutterChange        DiffChange
hi link GitGutterChangeDelete  DiffChange

" Completion Menu
call s:h("Pmenu",      {"fg": s:fg,          "bg": s:true_black})
call s:h("PmenuSel",   {"fg": s:light_fg,    "bg": s:blue})
call s:h("PmenuThumb", {"fg": s:yellow,      "bg": s:bg        })
call s:h("PmenuSbar",  {"fg": s:fg,          "bg": s:light_bg  })

" HTML syntax
hi! link htmlTag      Special
hi! link htmlEndTag   htmlTag
hi! link htmlTagName  Type
hi! link htmlTagN     Type " html5 tags show up as htmlTagN
" XML syntax
hi! link xmlTag       htmlTag
hi! link xmlEndTag    xmlTag
hi! link xmlTagName   htmlTagName
" HTML content
call s:h("htmlH1",        {"fg": s:light_yellow, "gui": "bold,italic", "cterm": "bold"})
call s:h("htmlH2",        {"fg": s:light_yellow, "gui": "italic"                      })
call s:h("htmlH3",        {"fg": s:yellow, "gui": "bold,italic", "cterm": "bold"})
call s:h("htmlH4",        {"fg": s:yellow, "gui": "italic"                      })
call s:h("htmlH5",        {"fg": s:dark_yellow, "gui": "bold,italic", "cterm": "bold"})
call s:h("htmlH6",        {"fg": s:dark_yellow, "gui": "italic"                      })
call s:h("htmlLink",      {"fg": s:light_blue,  "gui": "underline"  , "cterm": "underline"})
call s:h("htmlItalic",    {                 "gui": "italic"     , "cterm": "bold"     })
call s:h("htmlBold",      {                 "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlBoldItalic",{                 "gui": "bold,italic", "cterm": "bold"     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" Markdown content
hi! link markdownH1   htmlH1
hi! link markdownH2   htmlH2
hi! link markdownH3   htmlH3
hi! link markdownH4   htmlH4
hi! link markdownH5   htmlH5
hi! link markdownH6   htmlH6
hi! link markdownUrl  htmlLink
call s:h("markdownBlockquote",          {"fg": s:fg})
call s:h("markdownBold",                {"fg": s:fg    , "gui": "bold"       , "cterm": "bold"})
call s:h("markdownItalic",              {"fg": s:fg    , "gui": "italic"     , "cterm": "bold"})
call s:h("markdownBoldItalic",          {"fg": s:fg    , "gui": "bold,italic", "cterm": "bold"})
call s:h("markdownEscape",              {"fg": s:fg})
call s:h("markdownHeadingDelimiter",    {"fg": s:fg})
call s:h("markdownHeadingRule",         {"fg": s:fg})
call s:h("markdownId",                  {"fg": s:grey})
call s:h("markdownIdDeclaration",       {"fg": s:fg})
call s:h("markdownLinkDelimiter",       {"fg": s:grey})
call s:h("markdownLinkText",            {"fg": s:fg})
call s:h("markdownLinkTextDelimiter",   {"fg": s:grey})
call s:h("markdownListMarker",          {"fg": s:fg})
call s:h("markdownOrderedListMarker",   {"fg": s:fg})
call s:h("markdownRule",                {"fg": s:fg})
call s:h("markdownUrlDelimiter",        {"fg": s:grey})
call s:h("markdownUrlTitle",            {"fg": s:fg})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:grey})
call s:h("markdownCode",                {"fg": s:fg    , "bg": s:code_bg})
call s:h("markdownCodeDelimiter",       {"fg": s:fg    , "bg": s:code_bg})

