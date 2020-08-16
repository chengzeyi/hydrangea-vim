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

let s:base04       = ['#171a22', 233]
let s:base03       = ['#1e222c', 234] " L* = 44 #1e222c
let s:base02       = ['#2a303b', 236] " L* = 50 #2a303b
let s:base01       = ['#3b4351', 238] " L* = 58 #3b4351
let s:base00       = ['#586374', 242] " L* = 68 #586374
let s:base2        = ['#c3d5ec', 252] " L* = 93 #c3d5ec
let s:base3        = ['#edf5ff', 255] " L* = 99 #edf5ff
let s:red01        = ['#681c36',  52] " #681c36
let s:red1         = ['#e91e63', 161] " #e91e63
let s:red2         = ['#f280a7', 211] " #f280a7
let s:red3         = ['#f8bbd0', 218] " #f8bbd0
let s:teal01       = ['#134242',  23] " #134242
let s:teal1        = ['#258787',  30] " #258787
let s:teal2        = ['#36c2c2',  73] " #36c2c2
let s:cyan01       = ['#064253',  23] " #064253
let s:cyan1        = ['#169ec4',  38] " #169ec4
let s:cyan2        = ['#56c7ee',  81] " #56c7ee
let s:cyan3        = ['#bcebfe', 153] " #bcebfe
let s:blue1        = ['#537dd5',  68] " #537dd5
let s:blue2        = ['#8baafe', 111] " #8baafe
let s:blue3        = ['#c9d4fd', 189] " #c9d4fd
let s:violet1      = ['#996ddb',  98] " #996ddb
let s:violet2      = ['#c398fe', 141] " #c398fe
let s:violet3      = ['#e2ccfe', 189] " #e2ccfe
let s:magenta01    = ['#68024b',  53] " #68024b
let s:magenta1     = ['#e242ac', 169] " #e242ac
let s:magenta2     = ['#fe7ecd', 212] " #fe7ecd
let s:magenta3     = ['#ffc3e4', 218] " #ffc3e4
let s:orange1      = ['#d65d0e', 166] " #d65d0e
let s:orange2      = ['#fe8019', 208] " #fe8019

let s:fg   = s:base2
let s:albg = s:base02
let s:bg   = s:base03
let s:dpbg = s:base04
let s:colors                   = {}
let s:colors['Normal']         = {'fg': s:fg,       'bg': s:bg}
let s:colors['NormalNC']       = {'fg': s:fg,       'bg': s:dpbg}
let s:colors['bold']           = {'deco': 'bold'}
let s:colors['Cursor']         = {'fg': s:bg,       'bg': s:fg,        'deco': 'NONE'}
let s:colors['CursorIM']       = {'fg': s:bg,       'bg': s:fg}
let s:colors['CursorLine']     = {'fg': 'NONE',     'bg': s:albg,      'deco': 'NONE'}
let s:colors['CursorColumn']   = {'fg': 'NONE',     'bg': s:albg,      'deco': 'NONE'}
let s:colors['Visual']         = {'fg': 'NONE',     'bg': s:base01,    'deco': 'NONE'}
let s:colors['VisualNOS']      = {'fg': 'NONE',     'bg': s:base01,    'deco': 'NONE'}

let s:colors['Folded']         = {'fg': s:blue1,    'bg': s:albg,      'deco': 'NONE'}
let s:colors['Title']          = {'fg': s:magenta1, 'bg': 'NONE',      'deco': 'bold'}
let s:colors['StatusLine']     = {'fg': s:bg,       'bg': s:cyan1,     'deco': 'bold'}
let s:colors['StatusLineNC']   = {'fg': s:base00,   'bg': s:cyan01,    'deco': 'NONE'}
let s:colors['VertSplit']      = {'fg': s:albg,     'bg': 'NONE',      'deco': 'NONE'}
let s:colors['LineNr']         = {'fg': s:base00,   'bg': 'NONE',      'deco': 'NONE'}
let s:colors['CursorLineNr']   = {'fg': s:base3,    'bg': s:base00,    'deco': 'bold'}
let s:colors['SignColumn']     = {'fg': s:base00,   'bg': 'NONE',      'deco': 'NONE'}
let s:colors['FoldColumn']     = {'fg': s:blue1,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['SpecialKey']     = {'fg': s:base01,   'bg': 'NONE',      'deco': 'NONE'}
let s:colors['NonText']        = {'fg': s:base00,   'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Whitespace']     = {'fg': s:base01,   'bg': 'NONE',      'deco': 'NONE'}
let s:colors['EndOfBuffer']    = {'fg': s:base01,   'bg': 'NONE',      'deco': 'NONE'}
let s:colors['MatchParen']     = {'fg': s:red1,     'bg': 'NONE',      'deco': 'bold,strikethrough'}

let s:colors['Comment']        = {'fg': s:base00,   'deco': 'italic'}
let s:colors['Constant']       = {'fg': s:teal2,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['String']         = {'fg': s:teal2,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Number']         = {'fg': s:cyan2,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Boolean']        = {'fg': s:cyan2,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Identifier']     = {'fg': s:base3,    'deco': 'NONE'}
let s:colors['Function']       = {'fg': s:violet2,  'deco': 'NONE'}
let s:colors['Statement']      = {'fg': s:blue1,    'deco': 'NONE'}
let s:colors['Operator']       = {'fg': s:blue2,    'deco': 'NONE'}
let s:colors['Include']        = {'fg': s:violet1,  'deco': 'italic'}
let s:colors['PreProc']        = {'fg': s:violet1,  'deco': 'NONE'}
let s:colors['Type']           = {'fg': s:magenta1, 'deco': 'NONE'}
let s:colors['StorageClass']   = {'fg': s:blue2,    'deco': 'NONE'}
let s:colors['Structure']      = {'fg': s:magenta1, 'deco': 'NONE'}
let s:colors['Typedef']        = {'fg': s:blue2,    'deco': 'NONE'}
let s:colors['Special']        = {'fg': s:blue2,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['SpecialComment'] = {'fg': s:blue2,    'bg': 'NONE',      'deco': 'italic'}
let s:colors['Debug']          = {'fg': s:blue2,    'bg': 'NONE',      'deco': 'italic'}
let s:colors['Underlined']     = {'deco': 'underline'}
let s:colors['Ignore']         = {'fg': s:base01}
let s:colors['Error']          = {'fg': s:red1,     'bg': 'NONE',      'deco': 'bold'}
let s:colors['Todo']           = {'fg': s:orange2,  'bg': 'NONE',      'deco': 'bold,italic'}

let s:colors['IncSearch']      = {'fg': s:bg,       'bg': s:magenta2,  'deco': 'bold'}
" let s:colors['IncSearch']      = {'bg': s:red01,    'deco':'bold'}
let s:colors['Search']         = {'bg': s:base01}
" let s:colors['Substitute']     = {'fg': s:bg,       'bg': s:cyan2,     'deco': 'NONE'}
let s:colors['Pmenu']          = {'fg': s:base2,    'bg': s:base00,    'deco': 'NONE'}
let s:colors['PmenuSel']       = {'fg': s:base3,    'bg': s:blue1,     'deco': 'bold'}
let s:colors['PmenuSbar']      = {'bg': s:base01,   'deco': 'NONE'}
let s:colors['PmenuThumb']     = {'bg': s:base2,    'deco': 'NONE'}
let s:colors['TabLine']        = {'fg': s:bg,       'bg': s:base00,    'deco': 'NONE'}
let s:colors['TabLineSel']     = {'fg': s:bg,       'bg': s:magenta1,  'deco': 'bold'}
let s:colors['TabLineFill']    = {'fg': s:bg,       'bg': s:base01,    'deco': 'NONE'}
" let s:colors['Terminal']       = {'fg': s:base3,    'bg': s:albg,      'deco': 'NONE'}

let s:colors['SpellBad']       = {'sp': s:red1,                        'deco': 'undercurl'}
let s:colors['SpellCap']       = {'sp': s:red2,                        'deco': 'undercurl'}
let s:colors['SpellLocal']     = {'sp': s:orange1,                     'deco': 'undercurl'}
let s:colors['SpellRare']      = {'sp': s:orange2,                     'deco': 'undercurl'}

let s:colors['DiffAdd']        = {'fg': s:cyan1,    'bg': s:cyan01,    'deco': 'NONE'}
let s:colors['DiffChange']     = {'fg': s:magenta1, 'bg': s:magenta01, 'deco': 'NONE'}
let s:colors['DiffDelete']     = {'fg': s:red1,     'bg': s:red01,     'deco': 'NONE'}
let s:colors['DiffText']       = {'fg': s:magenta01,'bg': s:magenta1,  'deco': 'bold'}

let s:colors['diffAdded']      = {'fg': s:cyan1,    'bg': s:cyan01,    'deco': 'NONE'}
let s:colors['diffRemoved']    = {'fg': s:magenta1, 'bg': s:red01,     'deco': 'NONE'}

let s:colors['QuickFixLine']   = {'bg': s:red01,    'deco':'bold'}
let s:colors['qfFileName']     = {'fg': s:magenta1}
let s:colors['qfLineNr']       = {'fg': s:blue1}

let s:colors['Directory']      = {'fg': s:cyan1,    'deco': 'NONE'}
let s:colors['ErrorMsg']       = {'fg': s:red1,     'bg': 'NONE',      'deco': 'bold'}
let s:colors['MsgArea']        = {'bg': s:dpbg}
let s:colors['WarningMsg']     = {'fg': s:orange2,  'deco': 'bold'}
let s:colors['MoreMsg']        = {'fg': s:blue1,    'deco': 'bold'}
let s:colors['ModeMsg']        = {'fg': s:bg,       'bg': s:blue1,     'deco': 'bold'}
let s:colors['Question']       = {'fg': s:violet1,  'deco': 'bold'}
let s:colors['WildMenu']       = {'fg': s:base2,    'bg': s:base01,    'deco': 'bold'}
let s:colors['ColorColumn']    = {'fg': 'NONE',     'bg': s:red01,     'deco': 'NONE'}
let s:colors['Conceal']        = {'fg': s:base2,    'bg': s:base01,    'deco': 'NONE'}

set background=dark

for [hl_group, def] in items(s:colors)
    let processed_def = {
                \ 'guifg': 'NONE',
                \ 'ctermfg': 'NONE',
                \ 'guibg': 'NONE',
                \ 'ctermbg': 'NONE',
                \ 'gui': 'NONE',
                \ 'cterm': 'NONE',
                \ 'guisp': 'NONE'
                \ }
    for [key, val] in items(def)
        if key ==# 'fg'
            if type(val) == type('')
                let processed_def['guifg'] = val
                let processed_def['ctermfg'] = val
            else
                let processed_def['guifg'] = val[0]
                let processed_def['ctermfg'] = val[1]
            endif
        elseif key ==# 'bg'
            if type(val) == type('')
                let processed_def['guibg'] = val
                let processed_def['ctermbg'] = val
            else
                let processed_def['guibg'] = val[0]
                let processed_def['ctermbg'] = val[1]
            endif
        elseif key ==# 'deco'
            if type(val) == type('')
                let processed_def['gui'] = val
                let processed_def['cterm'] = val
            else
                let processed_def['gui'] = val[0]
                let processed_def['cterm'] = val[1]
            endif
        elseif key ==# 'sp'
            if type(val) == type('')
                let processed_def['guisp'] = val
            else
                let processed_def['guisp'] = val[0]
            endif
        endif
    endfor
    execute 'hi ' . hl_group . ' ' . join(map(items(processed_def), 'v:val[0] . "=" . v:val[1]'), ' ')
endfor

let s:terminal_ansi_colors = [
            \ s:base01[0], s:red1[0], s:cyan1[0], s:orange1[0],
            \ s:blue1[0], s:magenta1[0], s:violet1[0], s:base2[0],
            \ s:base00[0], s:red2[0], s:cyan2[0], s:orange2[0],
            \ s:blue2[0], s:magenta2[0], s:violet2[0], s:base3[0]
            \ ]

if has('nvim')
    for i in range(16)
        exe 'let g:terminal_color_' . i . ' = "' . s:terminal_ansi_colors[i] . '"'
    endfor
elseif exists(':terminal')
    let g:terminal_ansi_colors = s:terminal_ansi_colors
endif

