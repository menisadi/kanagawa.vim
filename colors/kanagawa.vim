" kanagawa-wave.vim - Kanagawa (Wave) colorscheme for Vim
" Inspired by rebelot/kanagawa.nvim (Wave variant)
" Author: menisadi
" ============================================================================

if exists('syntax_on')
  syntax reset
endif

set background=dark          " dark background
if has('termguicolors')
  set termguicolors
endif

hi clear
let g:colors_name = 'kanagawa-wave'

" ---------------------------------------------------------------------------
" Palette
" ---------------------------------------------------------------------------
" Core
let s:p = {}
let s:p.fg0  = '#dcd7ba'
let s:p.bg0  = '#1f1f28'
let s:p.bg1  = '#16161d'
let s:p.gray = '#54546d'
let s:p.accent_yellow = '#e6c384'
let s:p.accent_orange = '#ff9e3b'
let s:p.accent_red    = '#e82424'
let s:p.accent_pink   = '#d27e99'
let s:p.accent_green  = '#98bb6c'
let s:p.accent_blue   = '#7e9cd8'
let s:p.accent_cyan   = '#7fb4ca'
let s:p.accent_teal   = '#7aa89f'

" ---------------------------------------------------------------------------
" Helper
" ---------------------------------------------------------------------------
function! s:HL(group, fg, bg, attr) abort
  execute 'hi' a:group
        \ 'guifg=' . (empty(a:fg) ? 'NONE' : a:fg)
        \ 'guibg=' . (empty(a:bg) ? 'NONE' : a:bg)
        \ 'gui='   . (empty(a:attr)? 'NONE' : a:attr)
        \ 'ctermfg=' . (empty(a:fg) ? 'NONE' : '')
        \ 'ctermbg=' . (empty(a:bg) ? 'NONE' : '')
        \ 'cterm='   . (empty(a:attr)? 'NONE' : a:attr)
endfunction

" ---------------------------------------------------------------------------
" UI
" ---------------------------------------------------------------------------
call s:HL('Normal',        s:p.fg0,  s:p.bg0,  '')
call s:HL('EndOfBuffer',   s:p.bg0,  '',       '')
call s:HL('CursorLine',    '',       '#363646','')
call s:HL('CursorLineNr',  s:p.accent_orange, '#2a2a37', 'bold')
call s:HL('LineNr',        s:p.gray, '#2a2a37', '')
call s:HL('ColorColumn',   '',       '#2a2a37', '')
call s:HL('Cursor',        s:p.bg0,  s:p.fg0,  '')
call s:HL('StatusLine',    '#c8c093', '#16161d','')
call s:HL('StatusLineNC',  s:p.gray, '#16161d','')
call s:HL('WinSeparator',  '#16161d', '', '')

" Popup / Pmenu
call s:HL('Pmenu',         s:p.fg0,  '#223249', '')
call s:HL('PmenuSel',      '',       '#2d4f67', '')
call s:HL('PmenuSbar',     '',       '#223249', '')
call s:HL('PmenuThumb',    '',       '#2d4f67', '')

" Search
call s:HL('Search',        s:p.fg0,  '#2d4f67', '')
call s:HL('IncSearch',     '#223249', s:p.accent_orange, '')
call s:HL('CurSearch',     s:p.fg0,  '#2d4f67', 'bold')

" Diff
call s:HL('DiffAdd',       '', '#2b3328', '')
call s:HL('DiffChange',    '', '#252535', '')
call s:HL('DiffDelete',    s:p.accent_red, '#43242b', '')
call s:HL('DiffText',      '', '#49443c', '')

" Diagnostics / Spell
call s:HL('Error',         s:p.accent_red, '', '')
call s:HL('ErrorMsg',      s:p.accent_red, '', '')
call s:HL('WarningMsg',    s:p.accent_orange, '', '')
call s:HL('Todo',          '#223249', '#658594', 'bold')

call s:HL('SpellBad',      '', '', 'undercurl')
call s:HL('SpellCap',      '', '', 'undercurl')
call s:HL('SpellRare',     '', '', 'undercurl')
call s:HL('SpellLocal',    '', '', 'undercurl')

" ---------------------------------------------------------------------------
" Syntax
" ---------------------------------------------------------------------------
call s:HL('Comment',     '#727169', '', 'italic')
call s:HL('Constant',    s:p.accent_orange, '', '')
call s:HL('String',      s:p.accent_green,  '', '')
call s:HL('Character',   s:p.accent_green,  '', '')
call s:HL('Number',      s:p.accent_pink,   '', '')
call s:HL('Boolean',     s:p.accent_orange, '','bold')
call s:HL('Float',       s:p.accent_pink,   '', '')

call s:HL('Identifier',  s:p.accent_yellow, '', '')
call s:HL('Function',    s:p.accent_blue,   '', '')
call s:HL('Statement',   '#957fb8', '', 'bold')
call s:HL('Conditional', '#957fb8', '', 'italic')
call s:HL('Repeat',      '#957fb8', '', 'bold')
call s:HL('Operator',    '#c0a36e', '', '')
call s:HL('Keyword',     '#957fb8', '', 'italic')
call s:HL('Exception',   '#e46876', '', '')

call s:HL('PreProc',     '#e46876', '', '')
call s:HL('Include',     '#e46876', '', '')
call s:HL('Define',      '#e46876', '', '')
call s:HL('Macro',       '#e46876', '', '')

call s:HL('Type',        s:p.accent_teal, '', '')
call s:HL('StorageClass',s:p.accent_teal, '', '')
call s:HL('Structure',   s:p.accent_teal, '', '')
call s:HL('Typedef',     s:p.accent_teal, '', '')

call s:HL('Special',     s:p.accent_cyan, '', '')
call s:HL('SpecialChar', s:p.accent_cyan, '', '')
call s:HL('Tag',         s:p.accent_cyan, '', '')
call s:HL('Delimiter',   '#9cabca', '', '')
call s:HL('SpecialComment', s:p.accent_cyan, '', '')
call s:HL('Debug',       s:p.accent_cyan, '', '')

" ---------------------------------------------------------------------------
" Links
" ---------------------------------------------------------------------------
hi! link Character   String
hi! link Float       Number
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CursorColumn CursorLine
hi! link CursorLineSign SignColumn
hi! link CursorLineFold FoldColumn
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link WildMenu Pmenu

" ============================================================================
" End of kanagawa-wave colorscheme
" ============================================================================
