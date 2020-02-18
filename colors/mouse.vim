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

let g:colors_name='mouse'

let g:background='dark'

" Colors
let s:black           = { "gui": "#101010", "cterm": "0"   }
let s:subtle_black    = { "gui": "#202020", "cterm": "235" }
let s:light_black     = { "gui": "#2d2d2d", "cterm": "8" }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:gray            = { "gui": "#767676", "cterm": "243" }
let s:light_gray      = { "gui": "#D9D9D9", "cterm": "253" }
let s:lighter_gray    = { "gui": "#E5E6E6", "cterm": "254" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:true_white      = { "gui": "#FFFFFF", "cterm": "231" }


let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }

let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }

let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }

let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

let s:orange          = { "gui": "#D75F5F", "cterm": "167" }

let s:pink            = { "gui": "#fb007a", "cterm": "9"   }

let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }


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

" Gui version GVIM
" Default Colors
hi Normal     guifg=#aaaaaa guibg=#101010
hi NonText    guifg=#005bc0 guibg=#202020 gui=none
hi LineNr     guifg=#808080 guibg=#202020 gui=none
hi ColorColumn              guibg=#2d2d2d
hi Cursor     guifg=#101010 guibg=#d3d7cf
hi lCursor    guifg=#101010 guibg=#d3d7cf
hi CursorLine               guibg=#2d2d2d
hi CursorColumn             guibg=#2d2d2d
hi MatchParen guifg=#d0d0d0 guibg=#005bc0 gui=bold
" Search
hi Search    guifg=#d0d0d0 guibg=#8000c0 gui=bold,underline
hi IncSearch guifg=#101010 guibg=#00c050 gui=bold
" Window Elements
hi StatusLine   guifg=#a0a0a0 guibg=#103858 gui=none
hi StatusLineNC guifg=#a0a0a0 guibg=#202020 gui=none
hi VertSplit    guifg=#a0a0a0 guibg=#202020 gui=none
hi Folded       guifg=#c0c0c0 guibg=#381058 gui=none
hi Visual       guifg=#c0c0c0 guibg=#103858 gui=none
" Specials
hi Title    guifg=#202020 guibg=#80ff00 gui=bold
hi ErrorMsg guifg=#f0f0f0 guibg=#f00000
" Syntax
hi PreProc    guifg=#8d00c0 gui=bold
hi Type       guifg=#dddddd gui=bold " void bool char int
hi Structure  guifg=#ffffff gui=bold " class struct
hi Statement  guifg=#dddddd gui=bold " if for while
hi Operator   guifg=#dddddd gui=bold " {, (, + - *...
hi Identifier guifg=#dddddd gui=bold
hi Special    guifg=#005bc0 gui=bold
" Values
hi Boolean  guifg=#ff00ff gui=bold
hi Number   guifg=#ff9800 gui=bold
hi Float    guifg=#ff6000 gui=bold
hi Constant guifg=#ff00ff gui=bold
hi String   guifg=#ff00ff gui=italic
" Code comment
hi Todo           guifg=#dddddd guibg=#802020 gui=bold
hi Comment        guifg=#205080 gui=italic
hi SpecialComment guifg=#60a0d0 gui=bold
" Diff
hi DiffChange guifg=#000000 guibg=#502020 gui=none " red
hi DiffText   guifg=#ffffff guibg=#502020 gui=none " red
hi DiffAdd    guifg=#ffffff guibg=#205020 gui=none " green
hi DiffDelete guifg=#101010 guibg=#202020 gui=none " grey
" Completion Menu
hi Pmenu      guifg=#c0c0c0 guibg=#000000
hi PmenuSel   guifg=#d0d0d0 guibg=#c00090
hi PmenuThumb guifg=#c0c000 guibg=bg
hi PmenuSbar  guifg=fg      guibg=#202020

" Cterm version VIM
" Default Colors
hi Normal     ctermfg=LIGHTGREY ctermbg=BLACK
hi NonText    ctermfg=BLUE      ctermbg=DARKGREY cterm=none
hi LineNr     ctermfg=DARKGREY  ctermbg=BLACK
hi ColorColumn                  ctermbg=DARKGREY
hi Cursor     ctermfg=BLACK     ctermbg=WHITE
hi lCursor    ctermfg=BLACK     ctermbg=WHITE
hi CursorLine                   ctermbg=DARKGREY
hi CursorColumn                 ctermbg=DARKGREY
hi MatchParen ctermfg=WHITE     ctermbg=BLUE     cterm=bold
" Search
hi Search    ctermfg=WHITE ctermbg=BLUE  cterm=bold,underline
hi IncSearch ctermfg=BLACK ctermbg=GREEN cterm=bold
" Window Elements
hi StatusLine   ctermfg=WHITE ctermbg=BLUE     cterm=none
hi StatusLineNC ctermfg=BLACK ctermbg=GREY     cterm=none
hi VertSplit    ctermfg=WHITE ctermbg=DARKGREY cterm=none
hi Folded       ctermfg=WHITE ctermbg=MAGENTA  cterm=none
hi Visual       ctermfg=WHITE ctermbg=BLUE     cterm=none
" Specials
hi Title    ctermfg=BLACK ctermbg=YELLOW cterm=bold
hi ErrorMsg ctermfg=WHITE ctermbg=RED
" Syntax
hi PreProc    ctermfg=DARKMAGENTA cterm=none
hi Type       ctermfg=WHITE       cterm=bold " void bool char int
hi Structure  ctermfg=WHITE       cterm=bold " class struct
hi Statement  ctermfg=WHITE       cterm=bold " if for while
hi Operator   ctermfg=WHITE       cterm=bold " { ( + - *
hi Identifier ctermfg=WHITE       cterm=bold
hi Special    ctermfg=BLUE        cterm=bold
" Values
hi Boolean  ctermfg=MAGENTA cterm=bold
hi Number   ctermfg=YELLOW  cterm=bold
hi Float    ctermfg=RED     cterm=bold
hi String   ctermfg=MAGENTA cterm=bold,italic
hi Constant ctermfg=MAGENTA cterm=bold
" Code Comment
hi Todo           ctermfg=WHITE    ctermbg=DARKRED cterm=bold
hi Comment        ctermfg=DARKBLUE cterm=italic
hi SpecialComment ctermfg=BLUE     cterm=bold
" Diff
hi DiffChange ctermfg=GREY   ctermbg=DARKRED   cterm=none
hi DiffText   ctermfg=YELLOW ctermbg=RED   cterm=none
hi DiffAdd    ctermfg=WHITE  ctermbg=GREEN cterm=none
hi DiffDelete ctermfg=BLUE   ctermbg=GREY  cterm=none
" Completion Menu
hi Pmenu      ctermfg=WHITE ctermbg=BLACK
hi PmenuSel   ctermfg=WHITE ctermbg=MAGENTA
hi PmenuThumb ctermfg=WHITE ctermbg=bg
hi PmenuSbar  ctermfg=fg    ctermbg=BLACK
