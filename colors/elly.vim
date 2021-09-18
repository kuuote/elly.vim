" Initialisation:"{{{
" ----------------------------------------------------------------------------
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elly"

let s:dark_light = "dark"
let s:cui_gui = "gui"
if (exists("g:elly_termmode") && g:elly_termmode == "cterm")
  set notermguicolors
  let s:cui_gui = "cterm"
endif
"}}}


" Palettes:"{{{
" ----------------------------------------------------------------------------
let s:palette = {}
let s:palette.c00       = {"gui": {"dark": "#111A1F"}, "cterm": {"dark": "232"}}
let s:palette.c01       = {"gui": {"dark": "#8D7856"}, "cterm": {"dark": "101"}}
let s:palette.c02       = {"gui": {"dark": "#798362"}, "cterm": {"dark": " 66"}}
let s:palette.c03       = {"gui": {"dark": "#9B9257"}, "cterm": {"dark": "100"}}
let s:palette.c04       = {"gui": {"dark": "#63768A"}, "cterm": {"dark": "117"}}
let s:palette.c05       = {"gui": {"dark": "#738C9C"}, "cterm": {"dark": " 23"}}
let s:palette.c06       = {"gui": {"dark": "#6998B3"}, "cterm": {"dark": " 75"}}
let s:palette.c07       = {"gui": {"dark": "#9A9A9A"}, "cterm": {"dark": "248"}}
let s:palette.bk00      = {"gui": {"dark": "#3E4B59"}, "cterm": {"dark": "237"}}
let s:palette.bk01      = {"gui": {"dark": "#151A1E"}, "cterm": {"dark": "234"}}
let s:palette.bk02      = {"gui": {"dark": "#14191F"}, "cterm": {"dark": "234"}}
let s:palette.bk03      = {"gui": {"dark": "#2D3640"}, "cterm": {"dark": "234"}}
let s:palette.comment   = {"gui": {"dark": "#5A5A5A"}, "cterm": {"dark": "240"}}
let s:palette.error     = {"gui": {"dark": "#810002"}, "cterm": {"dark": "  1"}}
let s:palette.selection = {"gui": {"dark": "#253340"}, "cterm": {"dark": "235"}}
let s:palette.diffg     = {"gui": {"dark": "#012800"}, "cterm": {"dark": "232"}}
let s:palette.diffr     = {"gui": {"dark": "#340001"}, "cterm": {"dark": " 52"}}
let s:palette.cdiffg    = {"gui": {"dark": "#037500"}, "cterm": {"dark": "  2"}}
let s:palette.cdiffy    = {"gui": {"dark": "#817E00"}, "cterm": {"dark": "  3"}}
let s:palette.cdiffr    = {"gui": {"dark": "#810002"}, "cterm": {"dark": "  1"}}
"}}}


" Building Commands:"{{{
" ----------------------------------------------------------------------------
fun! s:build_commands(fg_bg, pkey, color)
  let l:key = "s:".a:fg_bg."_".a:pkey
  let l:com = s:cui_gui.a:fg_bg."=".a:color
  exe "let ".l:key." = ' ".l:com."'"
endfun
for [key, val] in items(s:palette)
  let color = val[s:cui_gui][s:dark_light]
  call s:build_commands('bg', key, color)
  call s:build_commands('fg', key, color)
endfor
let s:fg_none = " ".s:cui_gui."fg=NONE"
let s:bg_none = " ".s:cui_gui."bg=NONE"

let s:b = ",bold"
let s:c = ",undercurl"
let s:i = ",italic"
let s:r = ",reverse"
let s:s = ",standout"
let s:u = ",underline"
exe "let s:fmt_none = ' gui=NONE".         " cterm=NONE".         " term=NONE"         ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.     " cterm=NONE".s:b.     " term=NONE".s:b     ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.     " cterm=NONE".s:c.     " term=NONE".s:c     ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.     " cterm=NONE".s:i.     " term=NONE".s:i     ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.     " cterm=NONE".s:r.     " term=NONE".s:r     ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.     " cterm=NONE".s:s.     " term=NONE".s:s     ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b. " cterm=NONE".s:u.s:b. " term=NONE".s:u.s:b ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.     " cterm=NONE".s:u.     " term=NONE".s:u     ."'"
"}}}


" Highlighting: "{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"       .s:fg_none      .s:bg_bk01      .s:fmt_none
exe "hi! Comment"           .s:fg_comment   .s:bg_none      .s:fmt_none
exe "hi! Conceal"           .s:fg_comment   .s:bg_none      .s:fmt_none
exe "hi! Constant"          .s:fg_c03       .s:bg_none      .s:fmt_none
exe "hi! CursorColumn"      .s:fg_none      .s:bg_bk01      .s:fmt_none
exe "hi! CursorLine"        .s:fg_none      .s:bg_bk01      .s:fmt_none
exe "hi! CursorLineConceal" .s:fg_comment   .s:bg_bk01      .s:fmt_none
exe "hi! CursorLineNr"      .s:fg_c03       .s:bg_bk01      .s:fmt_none
exe "hi! DiffAdd"           .s:fg_none      .s:bg_diffg     .s:fmt_none
exe "hi! DiffChange"        .s:fg_none      .s:bg_diffg     .s:fmt_none
exe "hi! DiffDelete"        .s:fg_diffr     .s:bg_diffr     .s:fmt_none
exe "hi! DiffText"          .s:fg_none      .s:bg_diffg     .s:fmt_none
exe "hi! Directory"         .s:fg_bk00      .s:bg_none      .s:fmt_none
exe "hi! EndOfBuffer"       .s:fg_c00       .s:bg_none      .s:fmt_none
exe "hi! Error"             .s:fg_c07       .s:bg_error     .s:fmt_none
exe "hi! ErrorMsg"          .s:fg_error     .s:bg_none      .s:fmt_none
exe "hi! FoldColumn"        .s:fg_none      .s:bg_bk02      .s:fmt_none
exe "hi! Folded"            .s:fg_bk00      .s:bg_bk02      .s:fmt_none
exe "hi! Function"          .s:fg_c01       .s:bg_none      .s:fmt_none
exe "hi! Identifier"        .s:fg_c01       .s:bg_none      .s:fmt_none
exe "hi! Ignore"            .s:fg_none      .s:bg_none      .s:fmt_none
exe "hi! Keyword"           .s:fg_c05       .s:bg_none      .s:fmt_none
exe "hi! LineNr"            .s:fg_bk03      .s:bg_none      .s:fmt_none
exe "hi! MatchParen"        .s:fg_c07       .s:bg_c00       .s:fmt_undr
exe "hi! ModeMsg"           .s:fg_c02       .s:bg_none      .s:fmt_none
exe "hi! NonText"           .s:fg_bk03      .s:bg_none      .s:fmt_none
exe "hi! Normal"            .s:fg_c07       .s:bg_c00       .s:fmt_none
exe "hi! Operator"          .s:fg_c07       .s:bg_none      .s:fmt_none
exe "hi! Pmenu"             .s:fg_c07       .s:bg_selection .s:fmt_none
exe "hi! PmenuSel"          .s:fg_c07       .s:bg_selection .s:fmt_revr
exe "hi! PreProc"           .s:fg_c03       .s:bg_none      .s:fmt_none
exe "hi! Question"          .s:fg_c02       .s:bg_none      .s:fmt_none
exe "hi! Search"            .s:fg_c00       .s:bg_c03       .s:fmt_none
exe "hi! SignColumn"        .s:fg_none      .s:bg_c00       .s:fmt_none
exe "hi! Special"           .s:fg_c05       .s:bg_none      .s:fmt_none
exe "hi! SpellBad"          .s:fg_error     .s:bg_none      .s:fmt_undr
exe "hi! SpellCap"          .s:fg_c01       .s:bg_none      .s:fmt_undr
exe "hi! SpellLocal"        .s:fg_c01       .s:bg_none      .s:fmt_undr
exe "hi! SpellRare"         .s:fg_c06       .s:bg_none      .s:fmt_undr
exe "hi! Statement"         .s:fg_c01       .s:bg_none      .s:fmt_none
exe "hi! StatusLine"        .s:fg_c07       .s:bg_bk02      .s:fmt_none
exe "hi! StatusLineNC"      .s:fg_bk00      .s:bg_bk02      .s:fmt_none
exe "hi! String"            .s:fg_c02       .s:bg_none      .s:fmt_none
exe "hi! Structure"         .s:fg_c03       .s:bg_none      .s:fmt_none
exe "hi! TabLine"           .s:fg_bk00      .s:bg_bk02      .s:fmt_revr
exe "hi! Title"             .s:fg_c04       .s:bg_none      .s:fmt_none
exe "hi! Todo"              .s:fg_c01       .s:bg_none      .s:fmt_undr
exe "hi! Type"              .s:fg_c03       .s:bg_none      .s:fmt_none
exe "hi! Underlined"        .s:fg_c01       .s:bg_none      .s:fmt_undr
exe "hi! VertSplit"         .s:fg_comment   .s:bg_none      .s:fmt_none
exe "hi! Visual"            .s:fg_none      .s:bg_selection .s:fmt_none
exe "hi! WarningMsg"        .s:fg_error     .s:bg_none      .s:fmt_none
exe "hi! WildMenu"          .s:fg_c00       .s:bg_c01       .s:fmt_none
exe "hi! qfLineNr"          .s:fg_c01       .s:bg_none      .s:fmt_none
"}}}


" Plugins Languages: "{{{
" ----------------------------------------------------------------------------
" Rust
" ---------
exe "hi! rustCommentLineDoc" .s:fg_comment .s:bg_none .s:fmt_none

" Vimscript
" ---------
exe "hi! vimParenSep" .s:fg_c05 .s:bg_none .s:fmt_none

" Markdown
" ---------
exe "hi! mkdHeading" .s:fg_c04 .s:bg_none .s:fmt_none
exe "hi! mkdCode"    .s:fg_c01 .s:bg_none .s:fmt_undr

" Markdown
" ---------
exe "hi! jsonKeyword" .s:fg_c04 .s:bg_none .s:fmt_none

" NerdTree
" ---------
exe "hi! NERDTreeOpenable" .s:fg_bk00 .s:bg_none .s:fmt_none
exe "hi! NERDTreeClosable" .s:fg_c03  .s:bg_none .s:fmt_none
exe "hi! NERDTreeUp"       .s:fg_bk00 .s:bg_none .s:fmt_none
exe "hi! NERDTreeDir"      .s:fg_c01  .s:bg_none .s:fmt_none
exe "hi! NERDTreeFile"     .s:fg_none .s:bg_none .s:fmt_none
exe "hi! NERDTreeDirSlash" .s:fg_c03  .s:bg_none .s:fmt_none

" GitGutter
" ---------
exe "hi! GitGutterAdd"          .s:fg_c02 .s:bg_none .s:fmt_none
exe "hi! GitGutterChange"       .s:fg_c01 .s:bg_none .s:fmt_none
exe "hi! GitGutterDelete"       .s:fg_c01 .s:bg_none .s:fmt_none
exe "hi! GitGutterChangeDelete" .s:fg_c01 .s:bg_none .s:fmt_none

" ale
" ---------
exe "hi! ALEError"       . s:fg_none .s:bg_none  .s:fmt_curl
exe "hi! ALEErrorSign"   . s:fg_none .s:bg_error .s:fmt_none
exe "hi! ALEWarning"     . s:fg_none .s:bg_none  .s:fmt_curl
exe "hi! ALEWarningSign" . s:fg_none .s:bg_c03   .s:fmt_none

" coc-git
" ---------
exe "hi! CocDiffAdd"    . s:fg_cdiffg .s:bg_none .s:fmt_none
exe "hi! CocDiffChange" . s:fg_cdiffy .s:bg_none .s:fmt_none
exe "hi! CocDiffDelete" . s:fg_cdiffr .s:bg_none .s:fmt_none
" }}}


" Terminal: "{{{
" ----------------------------------------------------------------------------
if has("nvim")
  let g:terminal_color_0  = s:palette.c00[s:cui_gui][s:dark_light]
  let g:terminal_color_1  = s:palette.c01[s:cui_gui][s:dark_light]
  let g:terminal_color_2  = s:palette.c02[s:cui_gui][s:dark_light]
  let g:terminal_color_3  = s:palette.c03[s:cui_gui][s:dark_light]
  let g:terminal_color_4  = s:palette.c04[s:cui_gui][s:dark_light]
  let g:terminal_color_5  = s:palette.c05[s:cui_gui][s:dark_light]
  let g:terminal_color_6  = s:palette.c06[s:cui_gui][s:dark_light]
  let g:terminal_color_7  = s:palette.c07[s:cui_gui][s:dark_light]
  let g:terminal_color_8  = s:palette.c00[s:cui_gui][s:dark_light]
  let g:terminal_color_9  = s:palette.c01[s:cui_gui][s:dark_light]
  let g:terminal_color_10 = s:palette.c02[s:cui_gui][s:dark_light]
  let g:terminal_color_11 = s:palette.c03[s:cui_gui][s:dark_light]
  let g:terminal_color_12 = s:palette.c04[s:cui_gui][s:dark_light]
  let g:terminal_color_13 = s:palette.c05[s:cui_gui][s:dark_light]
  let g:terminal_color_14 = s:palette.c06[s:cui_gui][s:dark_light]
  let g:terminal_color_15 = s:palette.c07[s:cui_gui][s:dark_light]
  let g:terminal_color_backround = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
else
  let g:terminal_ansi_colors = [
    \ s:palette.c00[s:cui_gui][s:dark_light],
    \ s:palette.c01[s:cui_gui][s:dark_light],
    \ s:palette.c02[s:cui_gui][s:dark_light],
    \ s:palette.c03[s:cui_gui][s:dark_light],
    \ s:palette.c04[s:cui_gui][s:dark_light],
    \ s:palette.c05[s:cui_gui][s:dark_light],
    \ s:palette.c06[s:cui_gui][s:dark_light],
    \ s:palette.c07[s:cui_gui][s:dark_light],
    \ s:palette.c00[s:cui_gui][s:dark_light],
    \ s:palette.c01[s:cui_gui][s:dark_light],
    \ s:palette.c02[s:cui_gui][s:dark_light],
    \ s:palette.c03[s:cui_gui][s:dark_light],
    \ s:palette.c04[s:cui_gui][s:dark_light],
    \ s:palette.c05[s:cui_gui][s:dark_light],
    \ s:palette.c06[s:cui_gui][s:dark_light],
    \ s:palette.c07[s:cui_gui][s:dark_light]
  \ ]
endif
" }}}

