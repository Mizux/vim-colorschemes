" Vim Color File
" Name:       blade_runner.vim
" Version:    0.1
" Maintainer:	Mizux (mizux.dev@gmail.com)
" License:    The MIT License (MIT)

" Description:
"   A dark theme based on Blade Runner.

hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name='blade_runner'

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
let s:dark_black      = { "gui": "#101010", "cterm": "232" }
let s:subtle_black    = { "gui": "#202020", "cterm": "234" }
let s:light_black     = { "gui": "#2D2D2D", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:black           = s:dark_black

let s:dark_grey       = { "gui": "#767676", "cterm": "243" }
let s:light_grey      = { "gui": "#AAAAAA", "cterm": "252" }
let s:lighter_grey    = { "gui": "#D9D9D9", "cterm": "253" }
let s:grey            = s:dark_grey

let s:dark_white      = { "gui": "#F1F1F1", "cterm": "15"  }
let s:true_white      = { "gui": "#FFFFFF", "cterm": "231" }
let s:white           = s:dark_white

let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "9"   }
let s:red             = s:dark_red
let s:red             = { "gui": "#502020", "cterm": "88"   }

"let s:dark_green      = { "gui": "#00C050", "cterm": "2"   }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:green           = s:dark_green
let s:green           = { "gui": "#205020", "cterm": "2"   }

let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }
let s:light_yellow    = { "gui": "#F3E430", "cterm": "11"  }
"let s:yellow          = s:light_yellow
let s:yellow          = { "gui": "#FF9800", "cterm": "220"  }

"let s:darker_blue     = { "gui": "#103858", "cterm": "4"   } " dark blue
let s:darker_blue     = { "gui": "#005BC0", "cterm": "4"   } " dark blue
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"  }
let s:light_blue      = { "gui": "#20BBFC", "cterm": "12"  }
let s:lighter_blue    = { "gui": "#b6d6fd", "cterm": "153" }
let s:blue            = s:dark_blue

let s:darker_purple   = { "gui": "#381058", "cterm": "53"  }
"let s:dark_purple     = { "gui": "#523C79", "cterm": "54"  }
let s:dark_purple    = { "gui": "#8D00C0", "cterm": "54"   }
let s:light_purple    = { "gui": "#6855DE", "cterm": "5"   }
let s:purple          = s:dark_purple

let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:cyan            = s:dark_cyan

let s:orange          = { "gui": "#FF6000", "cterm": "166" }

let s:pink            = { "gui": "#FF9CD5", "cterm": "175" }

let s:dark_fuchsia    = { "gui": "#C00090", "cterm": "163" }
let s:light_fuchsia   = { "gui": "#FF00FF", "cterm": "13"  }
let s:fuchsia            = s:dark_fuchsia

let s:magenta         = { "gui": "#fb007a", "cterm": "9"   }

let s:dark_turquoise  = { "gui": "#005F87", "cterm": "24"  }
let s:light_turquoise = { "gui": "#008787", "cterm": "30"  }
let s:turquoise       = { "gui": "#4d5a5e", "cterm": "59"  }
"let s:turquoise       = s:dark_turquoise

let s:head_1          = s:dark_blue
let s:head_2          = s:light_blue
let s:head_3          = s:dark_cyan

let s:fg              = s:light_grey
let s:light_fg        = s:lighter_grey
let s:bg              = s:black
let s:light_bg        = s:subtle_black
let s:code_bg         = s:bg
let s:sp_un           = 'undercurl'
"let s:sp_un           = 'underline'

" Default Colors
call s:h("Normal",    {"fg": s:fg,   "bg": s:bg})
call s:h("NonText",   {"fg": s:red,  "bg": s:light_bg})
call s:h("Directory", {"fg": s:red, "gui": "bold", "cterm": "bold"}) " NerdTree Dir
call s:h("Title",     {"fg": s:red, "gui": "bold", "cterm": "bold"}) " NerdTree Exec file

call s:h("Cursor",      {"fg": s:bg, "bg": s:fg})
call s:h("lCursor",     {"fg": s:bg, "bg": s:fg})
call s:h("CursorLine",  {"bg": s:light_bg})
call s:h("CursorColumn",{"bg": s:light_bg})
call s:h("ColorColumn", {"bg": s:light_bg})

call s:h("Visual",      {"fg": s:light_fg, "bg": s:darker_blue})
call s:h("MatchParen",  {"fg": s:fg,       "bg": s:red, "gui": "bold", "cterm": "bold"})
call s:h("Folded",      {"fg": s:fg,       "bg": s:darker_purple})

" Search
call s:h("Search",      {"fg": s:light_fg, "bg": s:purple, "gui": "bold,underline", "cterm": "bold,underline"})
call s:h("IncSearch",   {"fg": s:light_fg, "bg": s:green,  "gui": "bold",           "cterm": "bold"})

" Window Elements
call s:h("LineNr",      {"fg": s:grey,     "bg": s:light_bg})
call s:h("StatusLine",  {"fg": s:fg,       "bg": s:darker_blue})
call s:h("StatusLineNC",{"fg": s:light_fg, "bg": s:light_bg})
call s:h("VertSplit",   {"fg": s:light_fg, "bg": s:light_bg})

" Preproc
call s:h("PreProc",  {"fg": s:red, "gui": "bold", "cterm": "bold"})
hi! link Include     PreProc
hi! link Define      PreProc
hi! link Macro       PreProc
hi! link PreCondit   PreProc

" Keyword
call s:h("Statement", {"fg": s:light_fg}) " if for while
hi! link Conditonal   Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement " {, (, + - *...
hi! link Keyword      Statement
hi! link Exception    Statement

" Types
call s:h("Type", {"fg": s:light_fg}) " void bool char int
hi! link Typedef          Type
hi! link Structure        Type " class struct
hi! link StorageClass     Type
hi! link Identifier       Type
hi! link Function         Type

" Primitives
call s:h("Constant", {"fg": s:light_red, "gui": "bold",   "cterm": "bold"})
call s:h("Boolean",  {"fg": s:red,       "gui": "bold",   "cterm": "bold"})
call s:h("Number",   {"fg": s:yellow,        "gui": "bold",   "cterm": "bold"})
call s:h("Float",    {"fg": s:orange,        "gui": "bold",   "cterm": "bold"})
call s:h("String",   {"fg": s:red, "gui": "italic"})

" Specials
call s:h("Special", {"fg": s:lighter_black, "gui": "bold", "cterm": "bold"}) " ({})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special

call s:h("Debug",    {"fg": s:fg, "bg": s:orange})
call s:h("Error",    {"fg": s:fg, "bg": s:red})

call s:h("WildMenu",   {"fg": s:light_fg, "bg": s:light_bg})
call s:h("ModeMsg",    {"fg": s:fg,       "bg": s:bg})
call s:h("MoreMsg",    {"fg": s:fg,       "bg": s:bg})
call s:h("WarningMsg", {"fg": s:fg,       "bg": s:orange})
call s:h("ErrorMsg",   {"fg": s:fg,       "bg": s:red})

" Code comment
call s:h("Todo",           {"fg": s:fg, "bg": s:red, "gui": "bold", "cterm": "bold"})
call s:h("Comment",        {"fg": s:turquoise,  "gui": "italic"})
call s:h("SpecialComment", {"fg": s:turquoise, "gui": "bold",   "cterm": "bold"})
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
call s:h("SpellBad",    {"fg": s:red,         "gui": s:sp_un, "cterm": s:sp_un, "sp": s:red})
call s:h("SpellCap",    {"fg": s:light_green, "gui": s:sp_un, "cterm": s:sp_un, "sp": s:light_green})
call s:h("SpellRare",   {"fg": s:fuchsia,     "gui": s:sp_un, "cterm": s:sp_un, "sp": s:fuchsia})
call s:h("SpellLocal",  {"fg": s:dark_green,  "gui": s:sp_un, "cterm": s:sp_un, "sp": s:dark_green})

" Diff
call s:h("DiffChange", {"fg": s:light_bg, "bg": s:red})
call s:h("DiffText",   {"fg": s:white,    "bg": s:red})
call s:h("DiffAdd",    {"fg": s:white,    "bg": s:green})
call s:h("DiffDelete", {"fg": s:red,      "bg": s:light_bg})
" Signify, git-gutter
hi link SignifySignAdd         DiffAdd
hi link SignifySignDelete      DiffDelete
hi link SignifySignChange      DiffChange
hi link GitGutterAdd           DiffAdd
hi link GitGutterDelete        DiffDelete
hi link GitGutterChange        DiffChange
hi link GitGutterChangeDelete  DiffChange

" Completion Menu
call s:h("Pmenu",      {"fg": s:light_fg, "bg": s:light_bg})
call s:h("PmenuSel",   {"fg": s:light_fg, "bg": s:fuchsia})
call s:h("PmenuThumb", {"fg": s:fg,       "bg": s:black})
call s:h("PmenuSbar",  {"fg": s:fg,       "bg": s:magenta})

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
call s:h("htmlH1",        {"fg": s:head_1, "gui": "bold,italic", "cterm": "bold"     })
call s:h("htmlH2",        {"fg": s:head_1, "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlH3",        {"fg": s:head_2, "gui": "italic"     ,                     })
call s:h("htmlH4",        {"fg": s:head_2, "gui": "italic"     ,                     })
call s:h("htmlH5",        {"fg": s:head_3                                            })
call s:h("htmlH6",        {"fg": s:head_3                                            })
call s:h("htmlLink",      {"fg": s:blue  , "gui": "underline"  , "cterm": "underline"})
call s:h("htmlItalic",    {                "gui": "italic"     , "cterm": "bold"     })
call s:h("htmlBold",      {                "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlBoldItalic",{                "gui": "bold,italic", "cterm": "bold"     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" Markdown content
call s:h("markdownBlockquote",          {"fg": s:fg})
call s:h("markdownBold",                {"fg": s:fg    , "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownBoldItalic",          {"fg": s:fg    , "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownEscape",              {"fg": s:fg})
call s:h("markdownH1",                  {"fg": s:head_1, "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownH2",                  {"fg": s:head_1, "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownH3",                  {"fg": s:head_2, "gui": "italic"                        })
call s:h("markdownH4",                  {"fg": s:head_2, "gui": "italic"                        })
call s:h("markdownH5",                  {"fg": s:head_3})
call s:h("markdownH6",                  {"fg": s:head_3})
call s:h("markdownHeadingDelimiter",    {"fg": s:fg})
call s:h("markdownHeadingRule",         {"fg": s:fg})
call s:h("markdownId",                  {"fg": s:grey})
call s:h("markdownIdDeclaration",       {"fg": s:fg})
call s:h("markdownItalic",              {"fg": s:fg    , "gui": "italic"     , "cterm": "bold"})
call s:h("markdownLinkDelimiter",       {"fg": s:grey})
call s:h("markdownLinkText",            {"fg": s:fg})
call s:h("markdownLinkTextDelimiter",   {"fg": s:grey})
call s:h("markdownListMarker",          {"fg": s:fg})
call s:h("markdownOrderedListMarker",   {"fg": s:fg})
call s:h("markdownRule",                {"fg": s:fg})
call s:h("markdownUrl",                 {"fg": s:grey  , "gui": "underline", "cterm": "underline"})
call s:h("markdownUrlDelimiter",        {"fg": s:grey})
call s:h("markdownUrlTitle",            {"fg": s:fg})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:grey})
call s:h("markdownCode",                {"fg": s:fg    , "bg": s:code_bg})
call s:h("markdownCodeDelimiter",       {"fg": s:fg    , "bg": s:code_bg})

