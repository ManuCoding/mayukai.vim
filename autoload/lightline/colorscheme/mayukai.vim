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
let s:g_periwinkle="#d4bfff"
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
let s:t_periwinkle=183
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
	let s:t_periwinkle=13
	let s:t_sandy=3
	let s:t_red=1
	let s:t_sky=12
	let s:t_sunglow=11
	let s:t_tiffany=6
	let s:t_violet=5
	let s:t_visual=8
	let s:t_white=15
endif

let s:aquamarine=[ s:g_aquamarine, s:t_aquamarine ]
let s:ash=[ s:g_ash, s:t_ash ]
let s:background=[ s:g_black, s:t_black ]
let s:black=[ s:g_black, s:t_black ]
let s:blue=[ s:g_blue, s:t_blue ]
let s:coral=[ s:g_coral, s:t_coral ]
let s:gray=[ s:g_gray, s:t_gray ]
let s:green=[ s:g_green, s:t_green ]
let s:mindaro=[ s:g_mindaro, s:t_mindaro ]
let s:normal=[ s:g_normal, s:t_normal ]
let s:periwinkle=[ s:g_periwinkle, s:t_periwinkle ]
let s:sandy=[ s:g_sandy, s:t_sandy ]
let s:red=[ s:g_red, s:t_red ]
let s:sky=[ s:g_sky, s:t_sky ]
let s:sunglow=[ s:g_sunglow, s:t_sunglow ]
let s:tiffany=[ s:g_tiffany, s:t_tiffany ]
let s:violet=[ s:g_violet, s:t_violet ]
let s:visual=[ s:g_visual, s:t_visual ]
let s:white=[ s:g_white, s:t_white ]

if exists("mayukai_transparent") && g:mayukai_transparent
	let s:background=[ s:g_black, 'NONE' ]
endif

let s:p={'normal': {}, 'inactive': {}, 'command': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left=[ [ s:black, s:sandy ], [ s:white, s:gray ] ]
let s:p.normal.middle=[ [ s:white, s:black ] ]
let s:p.normal.right=[ [ s:black, s:sandy ], [ s:white, s:gray ] ]
let s:p.normal.error=[ [ s:black, s:red ] ]
let s:p.normal.warning=[ [ s:black, s:sunglow ] ]
let s:p.inactive.left=[ [ s:white, s:black ] ]
let s:p.inactive.middle=[ [ s:ash, s:black ] ]
let s:p.inactive.right=[ [ s:white, s:black ] ]
let s:p.insert.left=[ [ s:black, s:sunglow ], [ s:white, s:gray ] ]
let s:p.insert.middle=[ [ s:white, s:black ] ]
let s:p.insert.right=[ [ s:black, s:sunglow ], [ s:white, s:gray ] ]
let s:p.replace.left=[ [ s:black, s:coral ], [ s:white, s:gray ] ]
let s:p.replace.right=[ [ s:black, s:coral ], [ s:white, s:gray ] ]
let s:p.visual.left=[ [ s:black, s:periwinkle ], [ s:white, s:gray ] ]
let s:p.visual.middle=[ [ s:white, s:black ] ]
let s:p.visual.right=[ [ s:black, s:periwinkle ], [ s:white, s:gray ] ]
let s:p.command.left=[ [ s:black, s:mindaro ], [ s:white, s:gray ] ]
let s:p.command.right=[ [ s:black, s:mindaro ], [ s:white, s:gray ] ]
let s:p.tabline.tabsel=[ [ s:black, s:sandy ] ]
let s:p.tabline.left=[ [ s:white, s:gray ] ]
let s:p.tabline.middle=[ [ s:white, s:background ] ]
let s:p.tabline.right=[ [ s:ash, s:background ] ]

let g:lightline#colorscheme#mayukai#palette=lightline#colorscheme#flatten(s:p)
