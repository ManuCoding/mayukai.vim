"hi clear
if exists('syntax_on')
	syntax reset
endif

" GUI colors
let s:g_aquamarine="#95e6cb"
let s:g_ash="#cbcebc"
let s:g_black="#1f232f"
let s:g_blue="#519aba"
let s:g_coral="#f28779"
let s:g_gray="#5c6773"
let s:g_green="#8dc149"
let s:g_mindaro="#bae67e"
let s:g_normal="#cbcebc"
let s:g_perlwinkle="#d4bfff"
let s:g_sandy="#ffa759"
let s:g_red="#cc3e44"
let s:g_sky="#5ccfe6"
let s:g_sunglow="#ffcc66"
let s:g_tiffany="#9dd2bb"
let s:g_violet="#8d7faa"
let s:g_visual="#262f3e"
let s:g_white="#eeeeee"

" term256 colors
let s:t_aquamarine=116
let s:t_ash=249
let s:t_black=233
let s:t_blue=67
let s:t_coral=210
let s:t_gray=241
let s:t_green=107
let s:t_mindaro=150
let s:t_normal=251
let s:t_perlwinkle=183
let s:t_sandy=215
let s:t_red=167
let s:t_sky=80
let s:t_sunglow=221
let s:t_tiffany=151
let s:t_violet=103
let s:t_visual=236
let s:t_white=253

" 16-color fallback
if &t_Co<256
	let s:t_aquamarine=14
	let s:t_ash=7
	let s:t_black=0
	let s:t_blue=4
	let s:t_coral=9
	let s:t_gray=8
	let s:t_green=2
	let s:t_mindaro=10
	let s:t_perlwinkle=13
	let s:t_sandy=3
	let s:t_red=1
	let s:t_sky=12
	let s:t_sunglow=11
	let s:t_tiffany=6
	let s:t_violet=5
	let s:t_visual=8
	let s:t_white=15
endif

" Basic colors
exec 'hi MayukaiAquamarine ctermfg='.s:t_aquamarine.' guifg='.s:g_aquamarine
exec 'hi MayukaiAsh ctermfg='.s:t_ash.' guifg='.s:g_ash
exec 'hi MayukaiBlack ctermfg='.s:t_black.' guifg='.s:g_black
exec 'hi MayukaiBlue ctermfg='.s:t_blue.' guifg='.s:g_blue
exec 'hi MayukaiCoral ctermfg='.s:t_coral.' guifg='.s:g_coral
exec 'hi MayukaiGray ctermfg='.s:t_gray.' guifg='.s:g_gray
exec 'hi MayukaiGreen ctermfg='.s:t_green.' guifg='.s:g_green
exec 'hi MayukaiMindaro ctermfg='.s:t_mindaro.' guifg='.s:g_mindaro
exec 'hi MayukaiPerlwinkle ctermfg='.s:t_perlwinkle.' guifg='.s:g_perlwinkle
exec 'hi MayukaiSandy ctermfg='.s:t_sandy.' guifg='.s:g_sandy
exec 'hi MayukaiRed ctermfg='.s:t_red.' guifg='.s:g_red
exec 'hi MayukaiSky ctermfg='.s:t_sky.' guifg='.s:g_sky
exec 'hi MayukaiSunglow ctermfg='.s:t_sunglow.' guifg='.s:g_sunglow
exec 'hi MayukaiTiffany ctermfg='.s:t_tiffany.' guifg='.s:g_tiffany
exec 'hi MayukaiViolet ctermfg='.s:t_violet.' guifg='.s:g_violet
exec 'hi MayukaiWhite ctermfg='.s:t_white.' guifg='.s:g_white

" Base TUI colors
exec 'hi ColorColumn cterm=NONE ctermfg='.s:t_black.' guifg='.s:g_black.' ctermbg='.s:t_red.' guibg='.s:g_red
exec 'hi Conceal cterm=NONE ctermfg='.s:t_white.' guifg='.s:g_white.' ctermbg='.s:t_gray.' guibg='.s:g_gray
exec 'hi CursorColumn cterm=NONE ctermfg='.s:t_white.' guifg='.s:g_white.' ctermbg='.s:t_gray.' guibg='.s:g_gray
exec 'hi CursorLine cterm=NONE ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi CursorLineNr cterm=NONE ctermfg='.s:t_ash.' guifg='.s:g_ash.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi DiffAdd ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi DiffChange ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi DiffDelete ctermfg='.s:t_red.' guifg='.s:g_red.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi DiffText cterm=bold ctermbg='.s:t_blue.' guibg='.s:g_blue
exec 'hi ErrorMsg cterm=NONE ctermfg='.s:t_white.' guifg='.s:g_white.' ctermbg='.s:t_red.' guibg='.s:g_red
exec 'hi FoldColumn cterm=NONE ctermfg='.s:t_green.' guifg='.s:g_green.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi Folded cterm=NONE ctermfg='.s:t_mindaro.' guifg='.s:g_mindaro.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi MatchParen cterm=bold ctermfg='.s:t_ash.' guifg='.s:g_ash.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi PmenuSbar cterm=NONE ctermfg='.s:t_black.' ctermbg='.s:t_gray.' guifg='.s:g_black.' guibg='.s:g_gray
exec 'hi PmenuThumb cterm=NONE ctermfg='.s:t_black.' ctermbg='.s:t_sunglow.' guifg='.s:g_black.' guibg='.s:g_sunglow
exec 'hi Search cterm=bold ctermfg='.s:t_white.' ctermbg='.s:t_gray.' guifg='.s:g_white.' guibg='.s:g_gray
exec 'hi SignColumn cterm=NONE ctermfg='.s:t_mindaro.' guifg='.s:g_mindaro.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi SpellBad cterm=underline ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi SpellCap cterm=underline ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi SpellLocal cterm=underline ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi SpellRare cterm=underline ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi StatusLine cterm=NONE ctermfg='.s:t_ash.' guifg='.s:g_ash.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi StatusLineNC cterm=NONE ctermfg='.s:t_blue.' guifg='.s:g_blue.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi StatusLineTerm cterm=NONE ctermfg='.s:t_mindaro.' guifg='.s:g_mindaro.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi StatusLineTermNC cterm=NONE ctermfg='.s:t_green.' guifg='.s:g_green.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi TabLine cterm=NONE ctermfg='.s:t_ash.' guifg='.s:g_ash.' ctermbg=NONE guibg=NONE'
exec 'hi TabLineFill cterm=NONE ctermbg=NONE guibg=NONE'
exec 'hi TabLineSel cterm=NONE ctermfg='.s:t_white.' guifg='.s:g_white.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi ToolbarButton cterm=NONE ctermfg='.s:t_black.' guifg='.s:g_black.' ctermbg='.s:t_white.' guibg='.s:g_white
exec 'hi ToolbarLine cterm=NONE ctermfg='.s:t_ash.' guifg='.s:g_ash.' ctermbg=NONE guibg=NONE'
exec 'hi VertSplit cterm=NONE ctermfg='.s:t_blue.' guifg='.s:g_blue.' ctermbg='.s:t_black.' guibg='.s:g_black
exec 'hi Visual cterm=NONE ctermfg=NONE guifg=NONE ctermbg='.s:t_visual.' guibg='.s:g_visual

" Putting Normal here
if exists("mayukai_transparent") && g:mayukai_transparent
	exec 'hi Normal cterm=NONE ctermfg='.s:t_normal.' ctermbg=NONE guifg='.s:g_normal.' guibg=NONE'
else
	set background=dark
	exec 'hi Normal cterm=NONE ctermfg='.s:t_normal.' ctermbg=0 guifg='.s:g_normal.' guibg=#141925'
endif

hi! link Directory   MayukaiSky
hi! link Ignore      MayukaiBlack
hi! link LineNr      MayukaiGray
hi! link ModeMsg     MayukaiSunglow
hi! link MoreMsg     MayukaiPerlwinkle
hi! link NonText     MayukaiBlue
hi! link Pmenu       CursorLine
hi! link PmenuSel    MayukaiSunglow
hi! link Question    MayukaiGreen
hi! link SpecialKey  MayukaiAsh
hi! link Title       MayukaiSunglow
hi! link WarningMsg  MayukaiRed
hi! link WildMenu    MayukaiSunglow

" Syntax links
hi! link Added       MayukaiGreen
hi! link Boolean     MayukaiSandy
hi! link Changed     MayukaiAquamarine
hi! link Comment     MayukaiGray
hi! link Character   MayukaiMindaro
hi! link Conditional MayukaiSandy
hi! link Constant    MayukaiSandy
hi! link Error       MayukaiRed
hi! link Function    MayukaiSunglow
hi! link Identifier  MayukaiAsh
hi! link Keyword     MayukaiSandy
hi! link Number      MayukaiAquamarine
hi! link Operator    MayukaiRed
hi! link PreProc     MayukaiSandy
hi! link Statement   MayukaiSandy
hi! link Special     MayukaiAquamarine
hi! link String      MayukaiMindaro
hi! link Todo        MayukaiSunglow
hi! link Type        MayukaiCoral

" Per-language specifics
hi! link cppSTLnamespace  MayukaiCoral
hi! link diffAdded        MayukaiMindaro
hi! link diffBDiffer      MayukaiSunglow
hi! link diffLine         MayukaiSky
hi! link diffRemoved      MayukaiRed
hi! link diffSubname      MayukaiPerlwinkle
hi! link gitcommitSummary MayukaiPerlwinkle
