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
let s:dark_black      = { "gui": "#101010", "cterm": "0"   }
let s:subtle_black    = { "gui": "#202020", "cterm": "235" }
let s:light_black     = { "gui": "#2D2D2D", "cterm": "8" }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:black           = s:dark_black

let s:gray            = { "gui": "#767676", "cterm": "243" }
let s:light_gray      = { "gui": "#AAAAAA", "cterm": "252" }
let s:lighter_gray    = { "gui": "#D9D9D9", "cterm": "253" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:true_white      = { "gui": "#FFFFFF", "cterm": "231" }

let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "9"   }
let s:red             = s:light_red

"let s:dark_green      = { "gui": "#00C050", "cterm": "2"   }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:green           = s:light_green

let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }
let s:light_yellow    = { "gui": "#F3E430", "cterm": "11"  }
let s:yellow          = s:light_yellow

let s:darker_blue     = { "gui": "#005BC0", "cterm": "18"  } " dark blue
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:light_blue      = { "gui": "#20BBFC", "cterm": "12" }
let s:blue            = s:light_blue

let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#8D00C0", "cterm": "13"  }
"let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }
let s:purple          = s:light_purple

let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:cyan            = s:light_cyan

let s:orange          = { "gui": "#D75F5F", "cterm": "167" }

let s:pink            = { "gui": "#fb007a", "cterm": "9"   }

let s:darker_turquoise= { "gui": "#005F87", "cterm": "18"  } " dark turquoise
"let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
"let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }

let s:head_a          = s:dark_blue
let s:head_b          = s:light_blue
let s:head_c          = s:dark_cyan

let s:norm            = s:light_gray
let s:bg              = s:black
let s:code_bg         = s:bg
let s:sp_un           = 'undercurl'
"let s:sp_un           = 'underline'

" Default Colors
call s:h("Normal",      {"fg": s:norm, "bg": s:bg})
call s:h("NonText",     {"fg": s:dark_blue, "bg": s:subtle_black})
call s:h("LineNr",      {"fg": s:gray, "bg": s:subtle_black})
call s:h("ColorColumn", {"bg": s:light_black})
call s:h("Cursor",      {"fg": s:dark_black, "bg": s:lighter_gray})
call s:h("lCursor",     {"fg": s:dark_black, "bg": s:lighter_gray})
call s:h("CursorLine",  {"bg": s:light_black})
call s:h("CursorColumn",{"bg": s:light_black})
call s:h("MatchParen",  {"fg": s:lighter_gray, "bg": s:dark_blue, "gui": "bold", "cterm": "bold"})

" Search
call s:h("Search",      {"fg": s:lighter_gray, "bg": s:light_purple, "gui": "bold,underline", "cterm": "bold,underline"})
call s:h("IncSearch",   {"fg": s:dark_black, "bg": s:dark_green, "gui": "bold", "cterm": "bold"})

" Window Elements
hi StatusLine   guifg=#a0a0a0 guibg=#103858
hi StatusLineNC guifg=#a0a0a0 guibg=#202020
hi VertSplit    guifg=#a0a0a0 guibg=#202020
hi Folded       guifg=#c0c0c0 guibg=#381058
hi Visual       guifg=#c0c0c0 guibg=#103858

" Preproc
hi PreProc    guifg=#8d00c0 gui=bold
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

hi Statement  guifg=#dddddd gui=bold " if for while
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement " {, (, + - *...
hi! link Keyword          Statement
hi! link Exception        Statement

" Types
hi Type     guifg=#dddddd gui=bold " void bool char int
hi! link Structure        Type " class struct
hi! link StorageClass     Type
hi! link Typedef          Type

" Primitives
hi Constant guifg=#ff00ff gui=bold
hi Boolean  guifg=#ff00ff gui=bold
hi Number   guifg=#ff9800 gui=bold
hi Float    guifg=#ff6000 gui=bold
hi String   guifg=#ff00ff gui=italic

hi Identifier guifg=#dddddd gui=bold
hi! link Function         Identifier

" Specials
hi Special    guifg=#005bc0 gui=bold
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
hi Title    guifg=#202020 guibg=#80ff00 gui=bold
hi ErrorMsg guifg=#f0f0f0 guibg=#f00000

" Code comment
hi Todo           guifg=#dddddd guibg=#802020 gui=bold
hi Comment        guifg=#205080 gui=italic
hi SpecialComment guifg=#60a0d0 gui=bold

" Diff
hi DiffChange guifg=#000000 guibg=#502020 gui=none " red
hi DiffText   guifg=#ffffff guibg=#502020 gui=none " red
hi DiffAdd    guifg=#ffffff guibg=#205020 gui=none " green
hi DiffDelete guifg=#101010 guibg=#202020 gui=none " grey

" Signify, git-gutter
hi link SignifySignAdd         DiffAdd
hi link SignifySignDelete      DiffDelete
hi link SignifySignChange      DiffChange
hi link GitGutterAdd           DiffAdd
hi link GitGutterDelete        DiffDelete
hi link GitGutterChange        DiffChange
hi link GitGutterChangeDelete  DiffChange



" Completion Menu
hi Pmenu      guifg=#c0c0c0 guibg=#000000
hi PmenuSel   guifg=#d0d0d0 guibg=#c00090
hi PmenuThumb guifg=#c0c000 guibg=bg
hi PmenuSbar  guifg=fg      guibg=#202020

" HTML syntax
hi! link htmlTag      Special
hi! link htmlEndTag   htmlTag
hi! link htmlTagName  KeyWord
" html5 tags show up as htmlTagN
hi! link htmlTagN     Keyword

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

" Markdown content
call s:h("markdownBlockquote",          {"fg": s:norm})
call s:h("markdownBold",                {"fg": s:norm  , "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownBoldItalic",          {"fg": s:norm  , "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownEscape",              {"fg": s:norm})
call s:h("markdownH1",                  {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownH2",                  {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownH3",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH4",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH5",                  {"fg": s:head_a})
call s:h("markdownH6",                  {"fg": s:head_a})
call s:h("markdownHeadingDelimiter",    {"fg": s:norm})
call s:h("markdownHeadingRule",         {"fg": s:norm})
call s:h("markdownId",                  {"fg": s:gray})
call s:h("markdownIdDeclaration",       {"fg": s:norm})
call s:h("markdownItalic",              {"fg": s:norm  , "gui": "italic"     , "cterm": "italic"})
call s:h("markdownLinkDelimiter",       {"fg": s:gray})
call s:h("markdownLinkText",            {"fg": s:norm})
call s:h("markdownLinkTextDelimiter",   {"fg": s:gray})
call s:h("markdownListMarker",          {"fg": s:norm})
call s:h("markdownOrderedListMarker",   {"fg": s:norm})
call s:h("markdownRule",                {"fg": s:norm})
call s:h("markdownUrl",                 {"fg": s:gray, "gui": "underline", "cterm": "underline"})
call s:h("markdownUrlDelimiter",        {"fg": s:gray})
call s:h("markdownUrlTitle",            {"fg": s:norm})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:gray})
call s:h("markdownCode",                {"fg": s:norm, "bg": s:code_bg})
call s:h("markdownCodeDelimiter",       {"fg": s:norm, "bg": s:code_bg})

