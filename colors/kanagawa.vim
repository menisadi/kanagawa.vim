" ============================================================================
" Kanagawa (Wave) Colorscheme for Vim
" Inspired by https://github.com/rebelot/kanagawa.nvim (Wave variant)
" Author: menisadi
" ============================================================================
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "kanagawa"

" Ensure true color is enabled if possible
if has("termguicolors")
  set termguicolors
endif

" ----------------------------------------------------------------------------
" Palette (Wave variant)
" ----------------------------------------------------------------------------
let s:palette = {}
let s:palette.sumiInk0     = "#16161D"
let s:palette.sumiInk1     = "#1F1F28"
let s:palette.sumiInk2     = "#2A2A37"
let s:palette.sumiInk3     = "#363646"
let s:palette.sumiInk4     = "#54546D"

let s:palette.fujiWhite    = "#DCD7BA"
let s:palette.oldWhite     = "#C8C093"

let s:palette.waveBlue1    = "#223249"
let s:palette.waveBlue2    = "#2D4F67"
let s:palette.waveAqua1    = "#6A9589"
let s:palette.waveAqua2    = "#7AA89F"
let s:palette.waveRed      = "#E46876"

let s:palette.autumnGreen  = "#76946A"
let s:palette.autumnRed    = "#C34043"
let s:palette.autumnYellow = "#DCA561"

let s:palette.boatYellow2  = "#C0A36E"
let s:palette.carpYellow   = "#E6C384"
let s:palette.surimiOrange = "#FFA066"
let s:palette.peachRed     = "#FF5D62"

" ----------------------------------------------------------------------------
" Helper function to set highlight groups
" ----------------------------------------------------------------------------
function! s:hi(group, guifg, guibg, attr, sp)
  execute 'hi ' . a:group
        \ . ' guifg=' . (a:guifg == '' ? 'NONE' : a:guifg)
        \ . ' guibg=' . (a:guibg == '' ? 'NONE' : a:guibg)
        \ . ' gui='   . (a:attr == ''  ? 'NONE' : a:attr)
        \ . (a:sp  != '' ? ' guisp=' . a:sp : '')
endfunction

" ----------------------------------------------------------------------------
" Editor UI
" ----------------------------------------------------------------------------
call s:hi('Normal',         s:palette.fujiWhite, s:palette.sumiInk1, '', '')
call s:hi('NormalNC',       s:palette.fujiWhite, s:palette.sumiInk1, '', '')
call s:hi('LineNr',         s:palette.oldWhite,  s:palette.sumiInk1, '', '')
call s:hi('CursorLineNr',   s:palette.carpYellow, s:palette.sumiInk1, 'bold', '')
call s:hi('CursorLine',     '', s:palette.sumiInk2, '', '')
call s:hi('CursorColumn',   '', s:palette.sumiInk2, '', '')
call s:hi('ColorColumn',    '', s:palette.sumiInk2, '', '')
call s:hi('SignColumn',     '', s:palette.sumiInk1, '', '')

call s:hi('VertSplit',      s:palette.sumiInk4, s:palette.sumiInk1, '', '')
call s:hi('WinSeparator',   s:palette.sumiInk4, s:palette.sumiInk1, '', '')
call s:hi('StatusLine',     s:palette.oldWhite, s:palette.sumiInk3, '', '')
call s:hi('StatusLineNC',   s:palette.oldWhite, s:palette.sumiInk2, '', '')

call s:hi('TabLine',        s:palette.oldWhite, s:palette.sumiInk2, '', '')
call s:hi('TabLineSel',     s:palette.fujiWhite, s:palette.sumiInk3, 'bold', '')
call s:hi('TabLineFill',    s:palette.oldWhite, s:palette.sumiInk1, '', '')

call s:hi('Pmenu',          s:palette.oldWhite, s:palette.sumiInk2, '', '')
call s:hi('PmenuSel',       s:palette.fujiWhite, s:palette.surimiOrange, '', '')
call s:hi('PmenuSbar',      '', s:palette.sumiInk3, '', '')
call s:hi('PmenuThumb',     '', s:palette.sumiInk4, '', '')

call s:hi('Visual',         '', s:palette.waveBlue2, '', '')

call s:hi('Search',         s:palette.sumiInk1, s:palette.waveAqua2, '', '')
call s:hi('IncSearch',      s:palette.sumiInk1, s:palette.peachRed, 'bold', '')

call s:hi('MatchParen',     s:palette.peachRed, s:palette.sumiInk3, 'bold', '')

call s:hi('SpecialKey',     s:palette.boatYellow2, '', '', '')
call s:hi('NonText',        s:palette.sumiInk4, '', '', '')

call s:hi('TermCursor',     s:palette.sumiInk1, s:palette.fujiWhite, '', '')
call s:hi('TermCursorNC',   s:palette.sumiInk1, s:palette.waveAqua1, '', '')

" ----------------------------------------------------------------------------
" Syntax Highlights
" ----------------------------------------------------------------------------
call s:hi('Comment',        s:palette.waveAqua1, '', 'italic', '')
call s:hi('Constant',       s:palette.autumnYellow, '', '', '')
call s:hi('String',         s:palette.autumnGreen,  '', '', '')
call s:hi('Character',      s:palette.autumnGreen,  '', '', '')
call s:hi('Identifier',     s:palette.waveAqua2,    '', '', '')
call s:hi('Function',       s:palette.boatYellow2,  '', '', '')
call s:hi('Statement',      s:palette.autumnRed,    '', '', '')
call s:hi('Operator',       s:palette.fujiWhite,    '', '', '')
call s:hi('Keyword',        s:palette.surimiOrange, '', '', '')
call s:hi('Conditional',    s:palette.surimiOrange, '', 'bold', '')
call s:hi('Repeat',         s:palette.surimiOrange, '', 'bold', '')
call s:hi('Label',          s:palette.surimiOrange, '', '', '')
call s:hi('Exception',      s:palette.peachRed,     '', 'bold', '')

call s:hi('PreProc',        s:palette.autumnYellow, '', '', '')
call s:hi('Include',        s:palette.autumnYellow, '', '', '')
call s:hi('Define',         s:palette.autumnYellow, '', '', '')
call s:hi('Macro',          s:palette.autumnYellow, '', '', '')
call s:hi('Type',           s:palette.waveAqua2,    '', '', '')
call s:hi('StorageClass',   s:palette.waveAqua2,    '', '', '')
call s:hi('Structure',      s:palette.waveAqua2,    '', '', '')
call s:hi('Typedef',        s:palette.waveAqua2,    '', '', '')

call s:hi('Special',        s:palette.waveBlue2,    '', '', '')
call s:hi('SpecialChar',    s:palette.peachRed,     '', '', '')
call s:hi('Tag',            s:palette.waveBlue2,    '', '', '')
call s:hi('Delimiter',      s:palette.oldWhite,     '', '', '')
call s:hi('SpecialComment', s:palette.waveAqua2,    '', 'italic', '')
call s:hi('Debug',          s:palette.peachRed,     '', '', '')

call s:hi('Underlined',     s:palette.waveBlue2,    '', 'underline', '')
call s:hi('Ignore',         s:palette.sumiInk4,     '', '', '')

" ----------------------------------------------------------------------------
" Diagnostics & LSP
" ----------------------------------------------------------------------------
call s:hi('Error',          s:palette.peachRed,     '', 'bold', '')
call s:hi('ErrorMsg',       s:palette.peachRed,     s:palette.sumiInk1, 'bold', '')
call s:hi('WarningMsg',     s:palette.autumnYellow, '', 'bold', '')
call s:hi('Todo',           s:palette.autumnRed,     s:palette.sumiInk2, 'bold', '')

call s:hi('DiagnosticError', s:palette.peachRed,     '', '', '')
call s:hi('DiagnosticWarn',  s:palette.autumnYellow, '', '', '')
call s:hi('DiagnosticInfo',  s:palette.waveAqua2,    '', '', '')
call s:hi('DiagnosticHint',  s:palette.waveAqua1,    '', '', '')

" ----------------------------------------------------------------------------
" Misc UI
" ----------------------------------------------------------------------------
call s:hi('Folded',         s:palette.oldWhite, s:palette.sumiInk2, '', '')
call s:hi('FoldColumn',     s:palette.oldWhite, s:palette.sumiInk1, '', '')

call s:hi('DiffAdd',        s:palette.autumnGreen, s:palette.sumiInk3, '', '')
call s:hi('DiffChange',     s:palette.waveBlue2,   s:palette.sumiInk3, '', '')
call s:hi('DiffDelete',     s:palette.peachRed,    s:palette.sumiInk3, '', '')
call s:hi('DiffText',       s:palette.peachRed,    s:palette.sumiInk3, '', '')

call s:hi('SpellBad',       '', '', 'undercurl', s:palette.peachRed)
call s:hi('SpellCap',       '', '', 'undercurl', s:palette.boatYellow2)
call s:hi('SpellRare',      '', '', 'undercurl', s:palette.waveAqua2)
call s:hi('SpellLocal',     '', '', 'undercurl', s:palette.waveAqua2)

" ============================================================================
" End of kanagawa (Wave) Colorscheme
" ============================================================================
