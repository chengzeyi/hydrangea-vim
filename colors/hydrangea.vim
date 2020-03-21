" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  5.0.0
" License:  MIT License

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark

hi Normal ctermfg=252 ctermbg=236 guifg=#c3d5ec guibg=#292d3e
hi Cursor ctermfg=236 ctermbg=255 cterm=NONE guifg=#292d3e guibg=#edf5ff gui=NONE
hi CursorIM ctermfg=236 ctermbg=255 guifg=#292d3e guibg=#edf5ff
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#1e222c gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#1e222c gui=NONE
hi Visual ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#3b4351 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=236 ctermbg=241 cterm=NONE guifg=#292d3e guibg=#586374 gui=NONE
hi Title ctermfg=162 ctermbg=NONE cterm=bold guifg=#e242ac guibg=NONE gui=bold
hi StatusLine ctermfg=252 ctermbg=238 cterm=NONE guifg=#c3d5ec guibg=#3b4351 gui=NONE
hi StatusLineNC ctermfg=241 ctermbg=234 cterm=NONE guifg=#586374 guibg=#1e222c gui=NONE
hi VertSplit ctermfg=238 ctermbg=NONE cterm=NONE guifg=#3b4351 guibg=NONE gui=NONE
hi LineNr ctermfg=241 ctermbg=NONE cterm=NONE guifg=#586374 guibg=NONE gui=NONE
hi SignColumn ctermfg=252 ctermbg=NONE cterm=NONE guifg=#c3d5ec guibg=NONE gui=NONE
hi FoldColumn ctermfg=68 ctermbg=NONE cterm=NONE guifg=#537dd5 guibg=NONE gui=NONE
hi CursorLineNr ctermfg=255 ctermbg=241 cterm=bold guifg=#edf5ff guibg=#586374 gui=bold
hi SpecialKey ctermfg=241 ctermbg=NONE cterm=bold guifg=#586374 guibg=NONE gui=bold
hi NonText ctermfg=241 ctermbg=NONE cterm=NONE guifg=#586374 guibg=NONE gui=NONE
hi EndOfBuffer ctermbg=NONE cterm=NONE guifg=bg guibg=NONE gui=NONE
hi MatchParen ctermfg=161 ctermbg=NONE cterm=bold,underline guifg=#e91e63 guibg=NONE gui=bold,underline
hi Comment ctermfg=241 cterm=italic guifg=#586374 gui=italic
hi Constant ctermfg=44 ctermbg=NONE cterm=bold guifg=#36c2c2 guibg=NONE gui=bold
hi String ctermfg=44 ctermbg=NONE cterm=NONE guifg=#36c2c2 guibg=NONE gui=NONE
hi Number ctermfg=81 ctermbg=NONE cterm=bold guifg=#56c7ee guibg=NONE gui=bold
hi Identifier ctermfg=255 cterm=bold guifg=#edf5ff gui=bold
hi Function ctermfg=183 cterm=bold guifg=#c398fe gui=bold
hi Statement ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Operator ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi Include ctermfg=98 cterm=NONE guifg=#996ddb gui=NONE
hi PreProc ctermfg=183 cterm=NONE guifg=#c398fe gui=NONE
hi Type ctermfg=162 cterm=bold guifg=#e242ac gui=bold
hi StorageClass ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Structure ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi Typedef ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Special ctermfg=111 ctermbg=NONE cterm=bold guifg=#8baafe guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=161 ctermbg=52 cterm=bold guifg=#e91e63 guibg=#681c36 gui=bold
hi Todo ctermfg=252 ctermbg=161 cterm=bold guifg=#c3d5ec guibg=#e91e63 gui=bold
hi IncSearch ctermfg=236 ctermbg=213 cterm=bold guifg=#292d3e guibg=#fe7ecd gui=bold
hi Search ctermfg=236 ctermbg=81 cterm=NONE guifg=#292d3e guibg=#56c7ee gui=NONE
hi Pmenu ctermfg=252 ctermbg=238 cterm=NONE guifg=#c3d5ec guibg=#3b4351 gui=NONE
hi PmenuSel ctermfg=234 ctermbg=183 cterm=bold guifg=#1e222c guibg=#c398fe gui=bold
hi PmenuSbar ctermbg=234 cterm=NONE guibg=#1e222c gui=NONE
hi PmenuThumb ctermbg=241 cterm=NONE guibg=#586374 gui=NONE
hi TabLine ctermfg=252 ctermbg=236 cterm=NONE guifg=#c3d5ec guibg=#292d3e gui=NONE
hi TabLineSel ctermfg=236 ctermbg=162 cterm=bold guifg=#292d3e guibg=#e242ac gui=bold
hi TabLineFill ctermfg=252 ctermbg=236 cterm=NONE guifg=#c3d5ec guibg=#292d3e gui=NONE
hi Terminal ctermfg=252 ctermbg=234 cterm=NONE guifg=#c3d5ec guibg=#1e222c gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=38 ctermbg=23 cterm=NONE guifg=#169ec4 guibg=#064253 gui=NONE
hi DiffChange ctermfg=162 ctermbg=89 cterm=NONE guifg=#e242ac guibg=#68024b gui=NONE
hi DiffDelete ctermfg=161 ctermbg=52 cterm=NONE guifg=#e91e63 guibg=#681c36 gui=NONE
hi DiffText ctermfg=218 ctermbg=89 cterm=bold guifg=#ffc3e4 guibg=#68024b gui=bold
hi diffAdded ctermfg=38 ctermbg=23 cterm=NONE guifg=#169ec4 guibg=#064253 gui=NONE
hi diffRemoved ctermfg=162 ctermbg=89 cterm=NONE guifg=#e242ac guibg=#68024b gui=NONE
hi Directory ctermfg=44 cterm=NONE guifg=#36c2c2 gui=NONE
hi ErrorMsg ctermfg=161 ctermbg=NONE cterm=NONE guifg=#e91e63 guibg=NONE gui=NONE
hi WarningMsg ctermfg=98 cterm=NONE guifg=#996ddb gui=NONE
hi MoreMsg ctermfg=68 cterm=NONE guifg=#537dd5 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WildMenu ctermfg=255 ctermbg=241 cterm=bold guifg=#edf5ff guibg=#586374 gui=bold
hi ColorColumn ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#681c36 gui=NONE
hi Conceal ctermfg=252 ctermbg=238 cterm=NONE guifg=#c3d5ec guibg=#3b4351 gui=NONE
