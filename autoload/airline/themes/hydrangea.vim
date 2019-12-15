" based on two-firewatch's airline theme

let s:base03    = ["#1e222c", 234]  " L* = 44
let s:base02    = ["#2a303b", 236]  " L* = 50
let s:base01    = ["#3b4351", 238]  " L* = 58
let s:base00    = ["#586374", 241]  " L* = 68
let s:base2     = ["#c3d5ec", 252]  " L* = 93
let s:base3     = ["#edf5ff", 255]  " L* = 99
let s:red01     = ["#681c36",  52]
let s:red1      = ["#e91e63", 161]
let s:teal01    = ["#134242",  23]
let s:teal2     = ["#36c2c2",  44]
let s:cyan01    = ["#064253",  23]
let s:cyan1     = ["#169ec4",  38]
let s:cyan2     = ["#56c7ee",  81]
let s:cyan3     = ["#bcebfe", 153]
let s:blue1     = ["#537dd5",  68]
let s:blue2     = ['#8baafe', 111]
let s:blue3     = ['#c9d4fd', 189]
let s:violet1   = ["#996ddb",  98]
let s:violet2   = ["#c398fe", 183]
let s:violet3   = ["#e2ccfe", 225]
let s:magenta01 = ["#68024b",  89]
let s:magenta1  = ["#e242ac", 162]
let s:magenta2  = ["#fe7ecd", 213]
let s:magenta3  = ["#ffc3e4", 218]

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

  let s:IA1 = s:gen(s:base03, s:base00)
  let s:IA2 = s:gen(s:base03, s:base01)
  let s:IA3 = s:gen(s:base03, s:base01)
  let g:airline#themes#hydrangea#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#hydrangea#palette.inactive_modified = g:airline#themes#hydrangea#palette.normal_modified
  let g:airline#themes#hydrangea#palette.tabline = {
        \ 'airline_tab':  s:N2,
        \ 'airline_tabsel':  s:R1,
        \ 'airline_tabtype':  s:V1,
        \ 'airline_tabfill':  s:IA3,
        \ 'airline_tabhid':  s:IA1,
        \ 'airline_tabmod':  s:I1
        \ }
endfunction

call airline#themes#hydrangea#refresh()
