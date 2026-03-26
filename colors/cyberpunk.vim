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

let s:cyber           = { "gui": "#bfdf00", "cterm": "148" }
let s:neon            = { "gui": "#2020ff", "cterm": "21"  }
let s:indigo          = { "gui": "#5010ff", "cterm": "57"  }
let s:violet          = { "gui": "#9910ff", "cterm": "93"  }

let s:dark_red        = { "gui": "#8f0010", "cterm": "88"  }
let s:red             = { "gui": "#df0050", "cterm": "161" }
let s:light_red       = { "gui": "#5faf5f", "cterm": "71"  }

let s:green           = { "gui": "#00df90", "cterm": "42"  }
let s:light_green     = { "gui": "#005f00", "cterm": "22"  }

let s:dark_blue       = { "gui": "#1010ff", "cterm": "21"  }
let s:blue            = { "gui": "#2020ff", "cterm": "21"  }

let s:yellow          = { "gui": "#d7af5f", "cterm": "179" }
let s:cyan            = { "gui": "#5fafd7", "cterm": "74"  }

let s:orange          = { "gui": "#ff5000", "cterm": "202" }
let s:light_orange    = { "gui": "#ffaf00", "cterm": "214" }

let s:hot_pink        = { "gui": "#ff50ff", "cterm": "207" }
let s:magenta         = { "gui": "#ff00ff", "cterm": "201" }

let s:light_white     = { "gui": "#5f8787", "cterm": "66"  }
let s:light_cyan      = { "gui": "#00afaf", "cterm": "37"  }

let s:special         = { "gui": "#00ff00", "cterm": "10"  }

let s:fg              = s:dark_white
let s:bg              = s:black
let s:sp_un           = 'undercurl'

" Default Colors
call s:h("Normal",    {"fg": s:fg,      "bg": s:bg})
call s:h("NonText",   {"fg": s:dark_grey,  "bg": s:bg}) " ~ characters
call s:h("Directory", {"fg": s:cyber,   "gui": "bold", "cterm": "bold"})

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
call s:h("Statement", {"fg": s:white, "gui": "bold", "cterm": "bold"})
hi! link Conditional  Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement
hi! link Keyword      Statement
hi! link Exception    Statement

" Type
call s:h("Type",      {"fg": s:cyber, "gui": "bold", "cterm": "bold"})
hi! link Typedef      Type
hi! link Structure    Type
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
call s:h("ModeMsg",    {"fg": s:cyber,      "gui": "bold", "cterm": "bold"})
call s:h("MoreMsg",    {"fg": s:cyber,      "gui": "bold", "cterm": "bold"})
call s:h("WarningMsg", {"fg": s:indigo,     "gui": "bold", "cterm": "bold"})
call s:h("ErrorMsg",   {"fg": s:red,        "gui": "bold", "cterm": "bold"})

" Code comment
call s:h("Comment",        {"fg": s:grey, "gui": "italic", "cterm": "italic"})
call s:h("Todo",           {"fg": s:red,  "bg": s:bg,      "gui": "bold", "cterm": "bold"})

" Diff
call s:h("DiffAdd",    {"fg": s:green, "bg": s:light_black})
call s:h("DiffChange", {"fg": s:violet, "bg": s:light_black})
call s:h("DiffDelete", {"fg": s:red,    "bg": s:light_black})
call s:h("DiffText",   {"fg": s:violet, "bg": s:light_black, "gui": "bold", "cterm": "bold"})

" Completion Menu
call s:h("Pmenu",      {"fg": s:fg,          "bg": s:light_black})
call s:h("PmenuSel",   {"fg": s:true_black,  "bg": s:cyber})
call s:h("PmenuSbar",  {"bg": s:subtle_black})
call s:h("PmenuThumb", {"bg": s:grey})

" Spell
call s:h("SpellBad",   {"sp": s:red,    "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellCap",   {"sp": s:indigo, "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellRare",  {"sp": s:violet, "gui": s:sp_un, "cterm": s:sp_un})
call s:h("SpellLocal", {"sp": s:cyan,   "gui": s:sp_un, "cterm": s:sp_un})

" Markdown / HTML
call s:h("htmlH1", {"fg": s:cyber,   "gui": "bold", "cterm": "bold"})
call s:h("htmlH2", {"fg": s:magenta, "gui": "bold", "cterm": "bold"})
call s:h("htmlH3", {"fg": s:violet,  "gui": "bold", "cterm": "bold"})
hi! link markdownH1 htmlH1
hi! link markdownH2 htmlH2
hi! link markdownH3 htmlH3
call s:h("markdownLinkText", {"fg": s:cyber, "gui": "bold", "cterm": "bold"})
call s:h("markdownUrl",      {"fg": s:violet, "gui": "underline", "cterm": "underline"})
