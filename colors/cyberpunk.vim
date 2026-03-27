" Vim Color File
" Name:       cyberpunk.vim
" Version:    0.1
" Maintainer:	Mizux (mizux.dev@gmail.com)
" License:    The MIT License (MIT)

" Description:
"   A dark theme based on Cyberpunk aesthetic.

hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name='cyberpunk'

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
let s:grey            = { "gui": "#808080", "cterm": "244" }
let s:light_grey      = { "gui": "#aaaaaa", "cterm": "248" }

let s:dark_white      = { "gui": "#d0d0d0", "cterm": "252" }
let s:white           = { "gui": "#f1f1f1", "cterm": "255" }
let s:light_white     = { "gui": "#5f8787", "cterm": "66"  }
let s:true_white      = { "gui": "#ffffff", "cterm": "231" }

let s:dark_red        = { "gui": "#8f0010", "cterm": "88"  }
let s:red             = { "gui": "#df0050", "cterm": "161" }
let s:light_red       = { "gui": "#5faf5f", "cterm": "71"  }

let s:dark_green      = { "gui": "#005f00", "cterm": "22"  }
let s:green           = { "gui": "#00df90", "cterm": "42"  }
let s:light_green     = { "gui": "#005f00", "cterm": "22"  }

let s:dark_blue       = { "gui": "#1010ff", "cterm": "21"  }
let s:blue            = { "gui": "#2020ff", "cterm": "21"  }
let s:light_blue      = { "gui": "#20bbfc", "cterm": "12"  }

let s:dark_yellow     = { "gui": "#d7af00", "cterm": "178" }
let s:yellow          = { "gui": "#d7af5f", "cterm": "179" }
let s:light_yellow    = { "gui": "#ffff00", "cterm": "226" }

let s:dark_cyan       = { "gui": "#20a5ba", "cterm": "6"   }
let s:cyan            = { "gui": "#5fafd7", "cterm": "74"  }
let s:light_cyan      = { "gui": "#00afaf", "cterm": "37"  }

let s:cyber           = { "gui": "#bfdf00", "cterm": "148" }
let s:neon            = { "gui": "#2020ff", "cterm": "21"  }
let s:indigo          = { "gui": "#5010ff", "cterm": "57"  }
let s:violet          = { "gui": "#9910ff", "cterm": "93"  }
let s:magenta         = { "gui": "#ff00ff", "cterm": "201" }
"let s:fuchsia         = { "gui": "#ff00ff", "cterm": "13"  }
let s:hot_pink        = { "gui": "#ff50ff", "cterm": "207" }

let s:orange          = { "gui": "#ff5000", "cterm": "202" }
let s:light_orange    = { "gui": "#ffaf00", "cterm": "214" }

let s:dark_turquoise  = { "gui": "#005f5f", "cterm": "23"  }
let s:turquoise       = { "gui": "#008080", "cterm": "6"   }
let s:light_turquoise = { "gui": "#008787", "cterm": "30"  }

let s:dark_sky        = { "gui": "#005f87", "cterm": "24"  }
let s:sky             = { "gui": "#0087d7", "cterm": "32"  }
let s:light_sky       = { "gui": "#5fafd7", "cterm": "74"  }

let s:special         = { "gui": "#00ff00", "cterm": "10"  }

let s:fg              = s:dark_white
let s:light_fg        = s:white
let s:bg              = s:black
let s:light_bg        = s:subtle_black
let s:code_bg         = s:bg
let s:sp_un           = 'undercurl'
"let s:sp_un           = 'underline'

" Default Colors
call s:h("Normal",    {"fg": s:fg,      "bg": s:bg})
call s:h("NonText",   {"fg": s:dark_grey,  "bg": s:bg}) " ~ characters
call s:h("Directory", {"fg": s:cyber,   "gui": "bold", "cterm": "bold"}) " NerdTree Dir
call s:h("Title",     {"fg": s:violet, "gui": "bold", "cterm": "bold"}) " NerdTree Exec file

" UI Elements
call s:h("Cursor",      {"fg": s:bg, "bg": s:grey})
call s:h("lCursor",     {"fg": s:bg, "bg": s:grey})
call s:h("CursorLine",  {"bg": s:light_black})
call s:h("CursorColumn",{"bg": s:light_black})
call s:h("ColorColumn", {"bg": s:light_black})

call s:h("Visual",     {"fg": s:true_black, "bg": s:cyber})
call s:h("MatchParen", {"fg": s:dark_white, "bg": s:dark_grey, "gui": "bold", "cterm": "bold"})
call s:h("Folded",     {"fg": s:grey,       "bg": s:subtle_black})

" Search
call s:h("Search",    {"fg": s:true_black, "bg": s:magenta, "gui": "bold", "cterm": "bold"})
call s:h("IncSearch", {"fg": s:true_black, "bg": s:green,   "gui": "bold", "cterm": "bold"})

" Window Elements
call s:h("LineNr",      {"fg": s:dark_grey, "bg": s:subtle_black})
call s:h("CursorLineNr",{"fg": s:cyber,     "bg": s:subtle_black, "gui": "bold", "cterm": "bold"})
call s:h("StatusLine",  {"fg": s:true_black, "bg": s:cyber,       "gui": "bold", "cterm": "bold"})
call s:h("StatusLineNC",{"fg": s:grey,       "bg": s:light_black})
call s:h("VertSplit",   {"fg": s:light_white, "bg": s:bg})

" Preproc
call s:h("PreProc", {"fg": s:violet, "gui": "bold", "cterm": "bold"})
hi! link Include    PreProc
hi! link Define     PreProc
hi! link Macro      PreProc
hi! link PreCondit  PreProc

" Keyword / Statement
call s:h("Statement", {"fg": s:white, "gui": "bold", "cterm": "bold"}) " if for while
hi! link Conditional  Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement " {, (, + - *...
hi! link Keyword      Statement
hi! link Exception    Statement

" Type
call s:h("Type",      {"fg": s:cyber, "gui": "bold", "cterm": "bold"}) " void bool char int
hi! link Typedef      Type
hi! link Structure    Type " class struct
hi! link StorageClass Type

" Identifier
call s:h("Identifier", {"fg": s:fg})
call s:h("Function",   {"fg": s:fg})

" Primitives
call s:h("Constant", {"fg": s:magenta})
call s:h("Boolean",  {"fg": s:magenta, "gui": "bold", "cterm": "bold"})
call s:h("Number",   {"fg": s:cyber})
call s:h("Float",    {"fg": s:orange})
call s:h("String",   {"fg": s:magenta})

" Specials
call s:h("Special", {"fg": s:special})
hi! link SpecialChar    Special
hi! link Tag            Special
hi! link Delimiter      Special

call s:h("Debug", {"fg": s:special, "bg": s:bg})
call s:h("Error", {"fg": s:red,     "bg": s:bg, "gui": "bold", "cterm": "bold"})

call s:h("WildMenu",   {"fg": s:true_black, "bg": s:cyber})
call s:h("ModeMsg",    {"fg": s:cyber,      "gui": "bold", "cterm": "bold"}) " CMake commands options
call s:h("MoreMsg",    {"fg": s:cyber,      "gui": "bold", "cterm": "bold"})
call s:h("WarningMsg", {"fg": s:indigo,     "gui": "bold", "cterm": "bold"}) " CMake generator expression
call s:h("ErrorMsg",   {"fg": s:red,        "gui": "bold", "cterm": "bold"})

" Code comment
call s:h("Todo",           {"fg": s:cyber,  "bg": s:bg,      "gui": "bold", "cterm": "bold"})
call s:h("Comment",        {"fg": s:grey, "gui": "italic", "cterm": "italic"})
call s:h("SpecialComment", {"fg": s:light_grey,             "gui": "bold", "cterm": "bold"})
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
call s:h("SpellBad",   {"sp": s:red,    "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellCap",   {"sp": s:indigo, "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellRare",  {"sp": s:violet, "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellLocal", {"sp": s:cyan,   "gui": s:sp_un, "cterm": s:sp_un})

" Diff
call s:h("DiffAdd",    {"fg": s:green, "bg": s:light_black})
call s:h("DiffChange", {"fg": s:violet, "bg": s:light_black})
call s:h("DiffDelete", {"fg": s:red,    "bg": s:light_black})
call s:h("DiffText",   {"fg": s:violet, "bg": s:light_black, "gui": "bold", "cterm": "bold"})
" Signify, git-gutter
hi link SignifySignAdd         DiffAdd
hi link SignifySignDelete      DiffDelete
hi link SignifySignChange      DiffChange
hi link GitGutterAdd           DiffAdd
hi link GitGutterDelete        DiffDelete
hi link GitGutterChange        DiffChange
hi link GitGutterChangeDelete  DiffChange

" Completion Menu
call s:h("Pmenu",      {"fg": s:fg,          "bg": s:light_black})
call s:h("PmenuSel",   {"fg": s:true_black,  "bg": s:cyber})
call s:h("PmenuThumb", {"bg": s:grey})
call s:h("PmenuSbar",  {"bg": s:subtle_black})

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
call s:h("htmlH1", {"fg": s:cyber,   "gui": "bold", "cterm": "bold"})
call s:h("htmlH2", {"fg": s:magenta, "gui": "bold", "cterm": "bold"})
call s:h("htmlH3", {"fg": s:violet,  "gui": "bold", "cterm": "bold"})
call s:h("htmlH4", {"fg": s:violet,  "gui": "italic"                      })
call s:h("htmlH5", {"fg": s:indigo,  "gui": "bold,italic", "cterm": "bold"})
call s:h("htmlH6", {"fg": s:indigo,  "gui": "italic"                      })
call s:h("htmlLink",      {"fg": s:violet,  "gui": "underline"  , "cterm": "underline"})
call s:h("htmlItalic",    {                 "gui": "italic"     , "cterm": "bold"     })
call s:h("htmlBold",      {                 "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlBoldItalic",{                 "gui": "bold,italic", "cterm": "bold"     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" Markdown content
hi! link markdownH1 htmlH1
hi! link markdownH2 htmlH2
hi! link markdownH3 htmlH3
hi! link markdownH4 htmlH4
hi! link markdownH5 htmlH5
hi! link markdownH6 htmlH6
hi! link markdownUrl  htmlLink
call s:h("markdownBlockquote",          {"fg": s:fg})
call s:h("markdownBold",                {"fg": s:fg, "gui": "bold"       , "cterm": "bold"})
call s:h("markdownItalic",              {"fg": s:fg, "gui": "italic"     , "cterm": "bold"})
call s:h("markdownBoldItalic",          {"fg": s:fg, "gui": "bold,italic", "cterm": "bold"})
call s:h("markdownEscape",              {"fg": s:fg})
call s:h("markdownHeadingDelimiter",    {"fg": s:cyber})
call s:h("markdownHeadingRule",         {"fg": s:fg})
call s:h("markdownId",                  {"fg": s:grey})
call s:h("markdownIdDeclaration",       {"fg": s:cyber})
call s:h("markdownLinkDelimiter",       {"fg": s:light_fg})
call s:h("markdownLinkText",            {"fg": s:cyber, "gui": "bold", "cterm": "bold"})
call s:h("markdownLinkTextDelimiter",   {"fg": s:light_fg})
call s:h("markdownListMarker",          {"fg": s:cyber})
call s:h("markdownOrderedListMarker",   {"fg": s:cyber})
call s:h("markdownRule",                {"fg": s:fg})
call s:h("markdownUrlDelimiter",        {"fg": s:grey})
call s:h("markdownUrlTitle",            {"fg": s:fg})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:grey})
call s:h("markdownCode",                {"fg": s:fg, "bg": s:code_bg})
call s:h("markdownCodeDelimiter",       {"fg": s:fg, "bg": s:code_bg})

