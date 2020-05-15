" based on two-firewatch's airline theme

let s:base03       = ['#1e222c', 234] " L* = 44 #1e222c
let s:base02       = ['#2a303b', 236] " L* = 50 #2a303b
let s:base01       = ['#3b4351', 238] " L* = 58 #3b4351
let s:base00       = ['#586374', 241] " L* = 68 #586374
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

function! s:gen(a, b) abort
  return [a:a[0], a:b[0], a:a[1], a:b[1]]
endfunction

let g:airline#themes#hydrangea#palette = {}

function! airline#themes#hydrangea#refresh()
  let g:airline#themes#hydrangea#palette.accents = {
        \ 'red': [s:teal2[0], '', s:teal2[1], '', '']
        \ }

  let s:N1 = s:gen(s:base03, s:blue1)
  let s:N2 = s:gen(s:base03, s:blue2)
  let s:N3 = s:gen(s:base03, s:blue3)
  let g:airline#themes#hydrangea#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let g:airline#themes#hydrangea#palette.normal_modified = {
        \ 'airline_c': [s:blue1[0], '', s:blue1[1], '', '']
        \ }

  let s:I1 = s:gen(s:base03, s:cyan1)
  let s:I2 = s:gen(s:base03, s:cyan2)
  let s:I3 = s:gen(s:base03, s:cyan3)
  let g:airline#themes#hydrangea#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#hydrangea#palette.insert_modified = g:airline#themes#hydrangea#palette.normal_modified

  let s:R1 = s:gen(s:base03, s:magenta1)
  let s:R2 = s:gen(s:base03, s:magenta2)
  let s:R3 = s:gen(s:base03, s:magenta3)
  let g:airline#themes#hydrangea#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#hydrangea#palette.replace_modified = g:airline#themes#hydrangea#palette.normal_modified

  let s:V1 = s:gen(s:base03, s:violet1)
  let s:V2 = s:gen(s:base03, s:violet2)
  let s:V3 = s:gen(s:base03, s:violet3)
  let g:airline#themes#hydrangea#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#hydrangea#palette.visual_modified = g:airline#themes#hydrangea#palette.normal_modified

  let s:IA1 = s:gen(s:base03, s:base01)
  let s:IA2 = s:gen(s:base03, s:base00)
  let s:IA3 = s:gen(s:base03, s:base00)
  let g:airline#themes#hydrangea#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#hydrangea#palette.inactive_modified = g:airline#themes#hydrangea#palette.normal_modified
  let g:airline#themes#hydrangea#palette.tabline = {
        \ 'airline_tablabel': s:N2,
        \ 'airline_tab':  s:N2,
        \ 'airline_tabsel':  s:R1,
        \ 'airline_tabtype':  s:V1,
        \ 'airline_tabfill':  s:IA1,
        \ 'airline_tabmod':  s:I1,
        \ 'airline_tabhid':  s:IA2,
        \ 'airline_tab_right': s:N2,
        \ 'airline_tabsel_right': s:R1,
        \ 'airline_tabtype_right':  s:V1,
        \ 'airline_tabfill_right':  s:IA1,
        \ 'airline_tabmod_right':  s:I1,
        \ 'airline_tabhid_right':  s:IA2
        \ }
endfunction

call airline#themes#hydrangea#refresh()
