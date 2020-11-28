let g:airline#themes#elly#palette = {}

function! airline#themes#elly#refresh()
  let g:airline#themes#elly#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Function', 'fg'], 'none')
  let s:N2 = airline#themes#get_highlight2(['Normal', 'fg'], ['Visual', 'bg'], 'none')
  let s:N3 = airline#themes#get_highlight('CursorLine')
  let g:airline#themes#elly#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#elly#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['SpellRare', 'fg'], 'none')
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#elly#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#elly#palette.insert_modified = g:airline#themes#elly#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Constant', 'fg'], 'none')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#elly#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#elly#palette.replace_modified = g:airline#themes#elly#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Constant', 'fg'], 'none')
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#elly#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#elly#palette.visual_modified = g:airline#themes#elly#palette.normal_modified

  let s:IA = s:N1
  let g:airline#themes#elly#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#elly#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }
endfunction

call airline#themes#elly#refresh()

