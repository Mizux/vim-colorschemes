" Vim color file - silenthill
"
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set background=dark
set t_Co=256
let g:colors_name = "silenthill"

" Default Colors
hi Normal guifg=#c7c7c7 guibg=#14140f guisp=#14140f gui=NONE ctermfg=251 ctermbg=233 cterm=NONE
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold " Directory
hi Title guifg=#b3b3b3 guibg=#252a2b guisp=#252a2b gui=bold ctermfg=249 ctermbg=235 cterm=bold " Exec file

hi Cursor guifg=#192224 guibg=#b3b3b3 guisp=#b3b3b3 gui=NONE ctermfg=235 ctermbg=249 cterm=NONE
hi CursorLine guifg=NONE guibg=#1f1f1f guisp=#1f1f1f gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi cursorlinenr guifg=#e0e0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE

hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi MatchParen guifg=#131314 guibg=#a39ea3 guisp=#a39ea3 gui=bold ctermfg=233 ctermbg=248 cterm=bold
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE

" Search
hi Search guifg=#0a0a0a guibg=#cccbc8 guisp=#cccbc8 gui=NONE ctermfg=232 ctermbg=252 cterm=NONE
hi IncSearch guifg=#192224 guibg=#dedede guisp=#dedede gui=NONE ctermfg=235 ctermbg=253 cterm=NONE

" Window Elements
hi LineNr guifg=#6b6a6a guibg=#1c1b1c guisp=#1c1b1c gui=NONE ctermfg=242 ctermbg=234 cterm=NONE
hi StatusLine guifg=#544251 guibg=#0f0f0f guisp=#0f0f0f gui=bold ctermfg=240 ctermbg=233 cterm=bold
hi StatusLineNC guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi VertSplit guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE

" Preproc
hi PreProc guifg=#5e2416 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Define guifg=#6b0101 guibg=NONE guisp=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#c28202 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

" Keyword
hi Statement guifg=#e6e6e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi Conditional guifg=#e0e0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi Repeat guifg=#a1c1c2 guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Operator guifg=#703a04 guibg=NONE guisp=NONE gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Keyword guifg=#567e99 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi Exception guifg=#bd7f04 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

" Types
hi Type guifg=#536991 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi StorageClass guifg=#536991 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Identifier guifg=#cfcfcf guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
hi Function guifg=#6490db guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi LocalVariable guifg=#f0f0f0 guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi CTagsClass guifg=#2459e0 guibg=NONE guisp=NONE gui=NONE ctermfg=26 ctermbg=NONE cterm=NONE

" Primitives
hi Constant guifg=#789196 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Boolean guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi String guifg=#6c6d70 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE

" Specials
hi Special guifg=#cccccc guibg=NONE guisp=NONE gui=NONE ctermfg=252 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#d4d4d4 guibg=NONE guisp=NONE gui=NONE ctermfg=188 ctermbg=NONE cterm=NONE

hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE

hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi ModeMsg guifg=#c9c7c9 guibg=#192224 guisp=#192224 gui=bold ctermfg=251 ctermbg=235 cterm=bold
hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi ErrorMsg guifg=#A1A6A8 guibg=#4a1701 guisp=#4a1701 gui=NONE ctermfg=248 ctermbg=52 cterm=NONE

" Code comment
hi Todo guifg=#d7d7e0 guibg=#3d0011 guisp=#3d0011 gui=NONE ctermfg=254 ctermbg=52 cterm=NONE
hi Comment guifg=#4d5a5e guibg=NONE guisp=NONE gui=italic ctermfg=59 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

" Spell
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline

" Diff
hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
" Signify, git-gutter
hi link SignifySignAdd         DiffAdd
hi link SignifySignDelete      DiffDelete
hi link SignifySignChange      DiffChange
hi link GitGutterAdd           DiffAdd
hi link GitGutterDelete        DiffDelete
hi link GitGutterChange        DiffChange
hi link GitGutterChangeDelete  DiffChange

" Completion Menu
hi PMenu guifg=#c2c2c2 guibg=#252429 guisp=#252429 gui=NONE ctermfg=7 ctermbg=235 cterm=NONE
hi PMenuSel guifg=#754b6e guibg=#141412 guisp=#141412 gui=NONE ctermfg=96 ctermbg=233 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE


" Tabline.vim
hi TabLine guifg=#7a7679 guibg=#252429 guisp=#252429 gui=bold ctermfg=243 ctermbg=235 cterm=bold
hi TabLineFill guifg=#192224 guibg=#2f3030 guisp=#2f3030 gui=bold ctermfg=235 ctermbg=236 cterm=bold
hi TabLineSel guifg=#544251 guibg=#0f0f0f guisp=#0f0f0f gui=bold ctermfg=240 ctermbg=233 cterm=bold


