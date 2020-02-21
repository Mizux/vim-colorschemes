" Vim Color File
" Name:       mouse.vim
" Version:    0.1
" Maintainer:	Mizux (mizux.dev@gmail.com)
" License:    The MIT License (MIT)

" Description:
"   A dark theme based on the Mouse chararcter from Armitage III.

hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name='mouse_v2'

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
let s:subtle_black    = { "gui": "#202020", "cterm": "235" }
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
let s:red             = { "gui": "#502020", "cterm": "2"   }

"let s:dark_green      = { "gui": "#00C050", "cterm": "2"   }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:green           = s:dark_green
let s:green           = { "gui": "#205020", "cterm": "2"   }

let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }
let s:light_yellow    = { "gui": "#F3E430", "cterm": "11"  }
"let s:yellow          = s:light_yellow
let s:yellow          = { "gui": "#FF9800", "cterm": "11"  }

"let s:darker_blue     = { "gui": "#103858", "cterm": "18"  } " dark blue
let s:darker_blue     = { "gui": "#005BC0", "cterm": "18"  } " dark blue
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:light_blue      = { "gui": "#20BBFC", "cterm": "12"  }
let s:lighter_blue    = { "gui": "#b6d6fd", "cterm": "153" }
let s:blue            = s:dark_blue

let s:darker_purple   = { "gui": "#381058", "cterm": "5"   }
let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#8D00C0", "cterm": "13"  }
"let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }
let s:purple          = s:dark_purple

let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:cyan            = s:dark_cyan

let s:orange          = { "gui": "#FF6000", "cterm": "167" }

let s:pink            = { "gui": "#FF9CD5", "cterm": "9"   }
let s:dark_fuchsia    = { "gui": "#C00090", "cterm": "9"   }
let s:light_fuchsia   = { "gui": "#FF00FF", "cterm": "9"   }
let s:fuchsia            = s:light_fuchsia
let s:magenta         = { "gui": "#fb007a", "cterm": "9"   }

let s:dark_turquoise= { "gui": "#005F87", "cterm": "18"  } " dark turquoise

let s:head_a          = s:dark_blue
let s:head_b          = s:light_blue
let s:head_c          = s:dark_cyan

let s:fg              = s:light_grey
let s:bg              = s:black
let s:code_bg         = s:bg
let s:sp_un           = 'undercurl'
"let s:sp_un           = 'underline'

" Default Colors
call s:h("Normal",      {"fg": s:fg, "bg": s:bg})
call s:h("NonText",     {"fg": s:dark_blue, "bg": s:subtle_black})
call s:h("LineNr",      {"fg": s:grey, "bg": s:subtle_black})
call s:h("ColorColumn", {"bg": s:light_black})
call s:h("Cursor",      {"fg": s:bg, "bg": s:fg})
call s:h("lCursor",     {"fg": s:bg, "bg": s:fg})
call s:h("CursorLine",  {"bg": s:light_black})
call s:h("CursorColumn",{"bg": s:light_black})
call s:h("MatchParen",  {"fg": s:lighter_grey, "bg": s:dark_blue, "gui": "bold", "cterm": "bold"})

" Search
call s:h("Search",      {"fg": s:lighter_grey, "bg": s:light_purple, "gui": "bold,underline", "cterm": "bold,underline"})
call s:h("IncSearch",   {"fg": s:dark_black, "bg": s:dark_green, "gui": "bold", "cterm": "bold"})

" Window Elements
call s:h("StatusLine",  {"fg": s:light_grey, "bg": s:darker_blue})
call s:h("StatusLineNC",{"fg": s:light_grey, "bg": s:subtle_black})
call s:h("VertSplit",   {"fg": s:light_grey, "bg": s:subtle_black})
call s:h("Folded",      {"fg": s:lighter_grey, "bg": s:darker_purple})
call s:h("Visual",      {"fg": s:lighter_grey, "bg": s:darker_blue})

" Preproc
call s:h("PreProc",  {"fg": s:light_purple, "gui": "bold", "cterm": "bold"})
hi! link Include     PreProc
hi! link Define      PreProc
hi! link Macro       PreProc
hi! link PreCondit   PreProc

call s:h("Statement", {"fg": s:lighter_grey, "gui": "bold", "cterm": "bold"}) " if for while
hi! link Conditonal   Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement " {, (, + - *...
hi! link Keyword      Statement
hi! link Exception    Statement

" Types
call s:h("Type",  {"fg": s:lighter_grey, "gui": "bold", "cterm": "bold"}) " void bool char int
hi! link Structure        Type " class struct
hi! link StorageClass     Type
hi! link Typedef          Type

" Primitives
call s:h("Constant", {"fg": s:fuchsia, "gui": "bold",   "cterm": "bold"})
call s:h("Boolean",  {"fg": s:fuchsia, "gui": "bold",   "cterm": "bold"})
call s:h("Number",   {"fg": s:yellow,  "gui": "bold",   "cterm": "bold"})
call s:h("Float",    {"fg": s:orange,  "gui": "bold",   "cterm": "bold"})
call s:h("String",   {"fg": s:fuchsia, "gui": "italic", "cterm": "italic"})

call s:h("Identifier", {"fg": s:lighter_grey, "gui": "bold", "cterm": "bold"})
hi! link Function      Identifier

" Specials
call s:h("Special", {"fg": s:darker_blue, "gui": "bold", "cterm": "bold"})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
call s:h("Title",    {"fg": s:lighter_grey, "bg": s:head_a, "gui": "bold", "cterm": "bold"})
call s:h("ErrorMsg", {"fg": s:lighter_grey, "bg": s:red})

" Code comment
call s:h("Todo",           {"fg": s:lighter_grey, "bg": s:red, "gui": "bold", "cterm": "bold"})
call s:h("Comment",        {"fg": s:dark_turquoise,  "gui": "italic", "cterm": "italic"})
call s:h("SpecialComment", {"fg": s:dark_blue, "gui": "bold",   "cterm": "bold"})
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

" Diff
call s:h("DiffChange", {"fg": s:black, "bg": s:red})
call s:h("DiffText", {"fg": s:white, "bg": s:red})
call s:h("DiffAdd", {"fg": s:white, "bg": s:green})
call s:h("DiffDelete", {"fg": s:red, "bg": s:subtle_black})
" Signify, git-gutter
hi link SignifySignAdd         DiffAdd
hi link SignifySignDelete      DiffDelete
hi link SignifySignChange      DiffChange
hi link GitGutterAdd           DiffAdd
hi link GitGutterDelete        DiffDelete
hi link GitGutterChange        DiffChange
hi link GitGutterChangeDelete  DiffChange

" Completion Menu
call s:h("Pmenu", {"fg": s:lighter_grey, "bg": s:black})
call s:h("PmenuSel", {"fg": s:lighter_grey, "bg": s:dark_fuchsia})
call s:h("PmenuThumb", {"fg": s:lighter_grey, "bg": s:black})
call s:h("PmenuSbar", {"fg": s:light_grey, "bg": s:magenta})
"hi Pmenu      guifg=#c0c0c0 guibg=#000000
"hi PmenuSel   guifg=#d0d0d0 guibg=#c00090
"hi PmenuThumb guifg=#c0c000 guibg=bg
"hi PmenuSbar  guifg=fg      guibg=#202020

" HTML syntax
hi! link htmlTag      Special
hi! link htmlEndTag   htmlTag
hi! link htmlTagName  KeyWord
hi! link htmlTagN     Keyword " html5 tags show up as htmlTagN
" XML syntax
hi! link xmlTag       htmlTag
hi! link xmlEndTag    xmlTag
hi! link xmlTagName   htmlTagName
" HTML content
call s:h("htmlH1",        {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"     })
call s:h("htmlH2",        {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlH3",        {"fg": s:head_b, "gui": "italic"     , "cterm": "italic"   })
call s:h("htmlH4",        {"fg": s:head_b, "gui": "italic"     , "cterm": "italic"   })
call s:h("htmlH5",        {"fg": s:head_c                                            })
call s:h("htmlH6",        {"fg": s:head_c                                            })
call s:h("htmlLink",      {"fg": s:blue  , "gui": "underline"  , "cterm": "underline"})
call s:h("htmlItalic",    {                "gui": "italic"     , "cterm": "italic"   })
call s:h("htmlBold",      {                "gui": "bold"       , "cterm": "bold"     })
call s:h("htmlBoldItalic",{                "gui": "bold,italic", "cterm": "bold"     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" Markdown content
call s:h("markdownBlockquote",          {"fg": s:fg})
call s:h("markdownBold",                {"fg": s:fg  , "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownBoldItalic",          {"fg": s:fg  , "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownEscape",              {"fg": s:fg})
call s:h("markdownH1",                  {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownH2",                  {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownH3",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH4",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH5",                  {"fg": s:head_a})
call s:h("markdownH6",                  {"fg": s:head_a})
call s:h("markdownHeadingDelimiter",    {"fg": s:fg})
call s:h("markdownHeadingRule",         {"fg": s:fg})
call s:h("markdownId",                  {"fg": s:grey})
call s:h("markdownIdDeclaration",       {"fg": s:fg})
call s:h("markdownItalic",              {"fg": s:fg  , "gui": "italic"     , "cterm": "italic"})
call s:h("markdownLinkDelimiter",       {"fg": s:grey})
call s:h("markdownLinkText",            {"fg": s:fg})
call s:h("markdownLinkTextDelimiter",   {"fg": s:grey})
call s:h("markdownListMarker",          {"fg": s:fg})
call s:h("markdownOrderedListMarker",   {"fg": s:fg})
call s:h("markdownRule",                {"fg": s:fg})
call s:h("markdownUrl",                 {"fg": s:grey, "gui": "underline", "cterm": "underline"})
call s:h("markdownUrlDelimiter",        {"fg": s:grey})
call s:h("markdownUrlTitle",            {"fg": s:fg})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:grey})
call s:h("markdownCode",                {"fg": s:fg, "bg": s:code_bg})
call s:h("markdownCodeDelimiter",       {"fg": s:fg, "bg": s:code_bg})

