" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  5.0.0
" License:  MIT License

if get(g:, 'hydrangea_italic', 1)
    let s:italic = 'italic'
else
    let s:italic = 'NONE'
endif

if get(g:, 'hydrangea_bold', 1)
    let s:bold = 'bold'
else
    let s:bold = 'NONE'
endif

let s:base05       = ['#07080b', 232]
let s:base04       = ['#0e1015', 233]
let s:base03       = ['#1e222c', 234] " L* = 44 #1e222c
let s:base02       = ['#2a303b', 236] " L* = 50 #2a303b
let s:base01       = ['#3b4351', 238] " L* = 58 #3b4351
let s:base00       = ['#586374', 240] " L* = 68 #586374
let s:base2        = ['#c3d5ec', 252] " L* = 93 #c3d5ec
let s:base3        = ['#edf5ff', 255] " L* = 99 #edf5ff
let s:red02        = ['#481325',  52] " #481325
let s:red01        = ['#681c36',  88] " #681c36
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
let s:blue02       = ['#293e6a',  18] " #293e6a
let s:blue01       = ['#3a5795',  62] " #3a5795
let s:blue1        = ['#537dd5',  68] " #537dd5
let s:blue2        = ['#8baafe', 111] " #8baafe
let s:blue3        = ['#c9d4fd', 189] " #c9d4fd
let s:violet02     = ['#4c366d',  91] " #4c366d
let s:violet01     = ['#6b4c99',  93] " #6b4c99
let s:violet1      = ['#996ddb',  98] " #996ddb
let s:violet2      = ['#c398fe', 141] " #c398fe
let s:violet3      = ['#e2ccfe', 189] " #e2ccfe
let s:magenta02    = ['#712056',  53] " #712056
let s:magenta01    = ['#9e2e78',  89] " #9e2e78
let s:magenta1     = ['#e242ac', 169] " #e242ac
let s:magenta2     = ['#fe7ecd', 212] " #fe7ecd
let s:magenta3     = ['#ffc3e4', 218] " #ffc3e4
let s:orange1      = ['#d65d0e', 166] " #d65d0e
let s:orange2      = ['#fe8019', 208] " #fe8019

let s:fg   = s:base2
let s:albg = s:base02
let s:bg   = s:base03
let s:dpbg = s:base05
let s:colors                     = {}
let s:colors['Normal']           = {'fg': s:fg,        'bg': s:bg}
let s:colors['NormalNC']         = {'fg': s:fg,        'bg': s:base04}
let s:colors['bold']             = {'deco': s:bold}
let s:colors['Cursor']           = {'fg': s:dpbg,      'bg': s:fg,        'deco': 'NONE'}
let s:colors['CursorIM']         = {'fg': s:dpbg,      'bg': s:fg}
let s:colors['CursorLine']       = {'fg': 'NONE',      'bg': s:dpbg,      'deco': 'NONE'}
let s:colors['CursorColumn']     = {'fg': 'NONE',      'bg': s:dpbg,      'deco': 'NONE'}
let s:colors['Visual']           = {'fg': 'NONE',      'bg': s:base01,    'deco': 'NONE'}
let s:colors['VisualNOS']        = {'fg': 'NONE',      'bg': s:base01,    'deco': 'NONE'}

let s:colors['Folded']           = {'fg': s:blue1,     'bg': s:base01,      'deco': 'NONE'}
let s:colors['Title']            = {'fg': s:magenta1,  'bg': 'NONE',      'deco': s:bold}
let s:colors['StatusLine']       = {'fg': s:dpbg,      'bg': s:cyan1,     'deco': s:bold}
let s:colors['StatusLineNC']     = {'fg': s:cyan1,     'bg': s:cyan01,    'deco': 'NONE'}
let s:colors['StatusLineTerm']   = {'fg': s:dpbg,      'bg': s:teal1,     'deco': s:bold}
let s:colors['StatusLineTermNC'] = {'fg': s:teal1,     'bg': s:teal01,    'deco': 'NONE'}
let s:colors['MsgSeparator']     = {'fg': s:dpbg,      'bg': s:violet1,   'deco': s:bold}
let s:colors['VertSplit']        = {'fg': s:albg,      'bg': 'NONE',      'deco': 'NONE'}
let s:colors['LineNr']           = {'fg': s:base00,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['CursorLineNr']     = {'fg': s:base3,     'bg': s:base00,    'deco': s:bold}
let s:colors['SignColumn']       = {'fg': s:base00,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['FoldColumn']       = {'fg': s:blue1,     'bg': 'NONE',      'deco': 'NONE'}
if has('nvim-0.2.0')
    let s:colors['SpecialKey']   = {'fg': s:base00,    'bg': 'NONE',      'deco': 'NONE'}
else
    let s:colors['SpecialKey']   = {'fg': s:base01,    'bg': 'NONE',      'deco': 'NONE'}
endif
let s:colors['NonText']          = {'fg': s:base01,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Whitespace']       = {'fg': s:base01,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['EndOfBuffer']      = {'fg': s:base01,    'bg': 'NONE',      'deco': 'NONE'}
let s:colors['MatchParen']       = {'fg': s:red1,      'bg': s:base01,    'deco': s:bold}
" if has('patch-8.0.1038')
"     let s:colors['MatchParen']       = {'fg': s:red1,      'bg': 'NONE',      'deco': 'bold,strikethrough'}
" else
    " let s:colors['MatchParen']       = {'fg': s:red1,      'bg': s:base01,    'deco': 'bold'}
" endif

let s:colors['Comment']          = {'fg': s:base00,    'deco': s:italic}
let s:colors['Constant']         = {'fg': s:teal2,     'bg': 'NONE',      'deco': 'NONE'}
let s:colors['String']           = {'fg': s:teal2,     'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Number']           = {'fg': s:cyan2,     'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Boolean']          = {'fg': s:cyan2,     'bg': 'NONE',      'deco': 'NONE'}
let s:colors['Identifier']       = {'fg': s:base3,     'deco': 'NONE'}
let s:colors['Function']         = {'fg': s:violet2,   'deco': 'NONE'}
let s:colors['Statement']        = {'fg': s:blue1,     'deco': 'NONE'}
let s:colors['Label']            = {'fg': s:blue1,     'deco': s:italic}
let s:colors['Operator']         = {'fg': s:blue2,     'deco': 'NONE'}
let s:colors['Include']          = {'fg': s:violet1,   'deco': s:italic}
let s:colors['PreProc']          = {'fg': s:violet1,   'deco': 'NONE'}
let s:colors['Type']             = {'fg': s:magenta1,  'deco': s:bold}
let s:colors['StorageClass']     = {'fg': s:blue2,     'deco': s:bold}
let s:colors['Structure']        = {'fg': s:magenta1,  'deco': s:bold}
let s:colors['Typedef']          = {'fg': s:blue2,     'deco': s:bold}
let s:colors['Special']          = {'fg': s:blue2,     'bg': 'NONE',      'deco': s:bold}
let s:colors['SpecialComment']   = {'fg': s:blue2,     'bg': 'NONE',      'deco': s:italic}
let s:colors['Debug']            = {'fg': s:blue3,     'bg': 'NONE',      'deco': s:bold}
let s:colors['Underlined']       = {'deco': 'underline '}
let s:colors['Ignore']           = {'fg': s:base01}
let s:colors['Error']            = {'fg': s:red1,      'bg': 'NONE',      'deco': s:bold}
let s:colors['Todo']             = {'fg': s:orange2,   'bg': 'NONE',      'deco': s:bold}

let s:colors['IncSearch']        = {'fg': s:dpbg,      'bg': s:magenta2,  'deco': s:bold}
let s:colors['Search']           = {'fg': s:dpbg,      'bg': s:cyan2,     'deco': 'NONE'}
let s:colors['Pmenu']            = {'fg': s:base2,     'bg': s:base01,    'deco': 'NONE'}
let s:colors['PmenuSel']         = {'fg': s:base3,     'bg': s:blue01,    'deco': s:bold}
let s:colors['PmenuSbar']        = {'bg': s:base02,    'deco': 'NONE'}
let s:colors['PmenuThumb']       = {'bg': s:base2,     'deco': 'NONE'}
let s:colors['TabLine']          = {'fg': s:magenta1,  'bg': s:magenta02, 'deco': 'NONE'}
let s:colors['TabLineSel']       = {'fg': s:dpbg,      'bg': s:magenta1,  'deco': s:bold}
let s:colors['TabLineFill']      = {'fg': s:dpbg,      'bg': s:base01,    'deco': 'NONE'}
" let s:colors['Terminal']       = {'fg': s:base3,     'bg': s:albg,      'deco': 'NONE'}

let s:colors['SpellBad']         = {'sp': s:red1,                         'deco': 'undercurl'}
let s:colors['SpellCap']         = {'sp': s:red2,                         'deco': 'undercurl'}
let s:colors['SpellLocal']       = {'sp': s:orange1,                      'deco': 'undercurl'}
let s:colors['SpellRare']        = {'sp': s:orange2,                      'deco': 'undercurl'}

let s:colors['DiffAdd']          = {'bg': s:cyan01,    'deco': 'NONE'}
let s:colors['DiffChange']       = {'bg': s:magenta02, 'deco': 'NONE'}
let s:colors['DiffDelete']       = {'fg': s:red1,      'bg': s:red01,     'deco': 'NONE'}
let s:colors['DiffText']         = {'bg': s:magenta01, 'deco': 'bold'}

let s:colors['diffAdded']        = {'bg': s:cyan01,    'deco': 'NONE'}
let s:colors['diffRemoved']      = {'fg': s:dpbg,      'bg': s:red01,     'deco': 'NONE'}

let s:colors['QuickFixLine']     = {'bg': s:red01,     'deco': s:bold}
let s:colors['qfFileName']       = {'fg': s:magenta1}
let s:colors['qfLineNr']         = {'fg': s:blue1}

let s:colors['Directory']        = {'fg': s:cyan1,     'deco': 'NONE'}
let s:colors['ErrorMsg']         = {'fg': s:red1,      'bg': 'NONE',      'deco': s:bold}
" let s:colors['MsgArea']          = {'bg': s:dpbg}
let s:colors['WarningMsg']       = {'fg': s:orange2,   'deco': s:bold}
let s:colors['MoreMsg']          = {'fg': s:blue1,     'deco': s:bold}
let s:colors['ModeMsg']          = {'fg': s:blue1,     'deco': s:bold}
let s:colors['Question']         = {'fg': s:violet1,   'deco': s:bold}
let s:colors['WildMenu']         = {'fg': s:base2,     'bg': s:base01,    'deco': s:bold}
let s:colors['ColorColumn']      = {'fg': 'NONE',      'bg': s:red02,     'deco': 'NONE'}
let s:colors['Conceal']          = {'fg': s:base2,     'bg': s:base01,    'deco': 'NONE'}

let s:colors['LspReferenceText'] = s:colors['Visual']
let s:colors['LspReferenceRead'] = s:colors['Visual']
let s:colors['LspReferenceWrite'] = s:colors['Visual']

let s:colors['LspDiagnosticsDefaultError'] = s:colors['ErrorMsg']
let s:colors['LspDiagnosticsDefaultWarning'] = s:colors['WarningMsg']
let s:colors['LspDiagnosticsDefaultInformation'] = s:colors['MoreMsg']
let s:colors['LspDiagnosticsDefaultHint'] = s:colors['MoreMsg']
let s:colors['LspDiagnosticsSignError'] = s:colors['ErrorMsg']
let s:colors['LspDiagnosticsSignWarning'] = s:colors['WarningMsg']
let s:colors['LspDiagnosticsSignInformation'] = s:colors['MoreMsg']
let s:colors['LspDiagnosticsSignHint'] = s:colors['MoreMsg']
let s:colors['LspDiagnosticsFloatingError'] = s:colors['ErrorMsg']
let s:colors['LspDiagnosticsFloatingWarning'] = s:colors['WarningMsg']
let s:colors['LspDiagnosticsFloatingInformation'] = s:colors['MoreMsg']
let s:colors['LspDiagnosticsFloatingHint'] = s:colors['MoreMsg']
let s:colors['LspDiagnosticsUnderlineError'] = s:colors['SpellBad']
let s:colors['LspDiagnosticsUnderlineWarning'] = s:colors['SpellCap']
let s:colors['LspDiagnosticsUnderlineInformation'] = s:colors['SpellLocal']
let s:colors['LspDiagnosticsUnderlineHint'] = s:colors['SpellRare']

let s:colors['GitGutterAdd'] = {'fg': s:cyan1}
let s:colors['GitGutterChange'] = {'fg': s:magenta1}
let s:colors['GitGutterDelete'] = {'fg': s:red1}

set background=dark
hi clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'hydrangea'

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
    for key_val in items(def)
        if key_val[0] ==# 'fg'
            if type(key_val[1]) == type('')
                let processed_def['guifg'] = key_val[1]
                let processed_def['ctermfg'] = key_val[1]
            else
                let processed_def['guifg'] = key_val[1][0]
                let processed_def['ctermfg'] = key_val[1][1]
            endif
        elseif key_val[0] ==# 'bg'
            if type(key_val[1]) == type('')
                let processed_def['guibg'] = key_val[1]
                let processed_def['ctermbg'] = key_val[1]
            else
                let processed_def['guibg'] = key_val[1][0]
                let processed_def['ctermbg'] = key_val[1][1]
            endif
        elseif key_val[0] ==# 'deco'
            if type(key_val[1]) == type('')
                let processed_def['gui'] = key_val[1]
                let processed_def['cterm'] = key_val[1]
            else
                let processed_def['gui'] = key_val[1][0]
                let processed_def['cterm'] = key_val[1][1]
            endif
        elseif key_val[0] ==# 'sp'
            if type(key_val[1]) == type('')
                let processed_def['guisp'] = key_val[1]
            else
                let processed_def['guisp'] = key_val[1][0]
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
    for i in range(len(s:terminal_ansi_colors))
        exe 'let g:terminal_color_' . i . ' = "' . s:terminal_ansi_colors[i] . '"'
    endfor
elseif exists(':terminal')
    let g:terminal_ansi_colors = s:terminal_ansi_colors
endif
