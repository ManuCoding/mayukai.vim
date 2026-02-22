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

let g:airline#themes#mayukai#palette={}

let s:N1=[s:g_black,s:g_sandy,s:t_black,s:t_sandy]
let s:N2=[s:g_white,s:g_gray,s:t_white,s:t_gray]
let s:N3=[s:g_white,s:g_black,s:t_white,s:t_black]
let g:airline#themes#mayukai#palette.normal=airline#themes#generate_color_map(s:N1,s:N2,s:N3)

let s:IA1=[s:g_white,s:g_black,s:t_white,s:t_black]
let s:IA2=[s:g_ash,s:g_black,s:t_ash,s:t_black]
let s:IA3=[s:g_white,s:g_black,s:t_white,s:t_black]
let g:airline#themes#mayukai#palette.inactive=airline#themes#generate_color_map(s:IA1,s:IA2,s:IA3)

let s:I1=[s:g_black,s:g_sunglow,s:t_black,s:t_sunglow]
let s:I2=[s:g_white,s:g_gray,s:t_white,s:t_gray]
let s:I3=[s:g_white,s:g_black,s:t_white,s:t_black]
let g:airline#themes#mayukai#palette.insert=airline#themes#generate_color_map(s:I1,s:I2,s:I3)

let s:R1=[s:g_black,s:g_coral,s:t_black,s:t_coral]
let s:R2=[s:g_white,s:g_gray,s:t_white,s:t_gray]
let s:R3=[s:g_white,s:g_black,s:t_white,s:t_black]
let g:airline#themes#mayukai#palette.replace=airline#themes#generate_color_map(s:R1,s:R2,s:R3)

let s:V1=[s:g_black,s:g_perlwinkle,s:t_black,s:t_perlwinkle]
let s:V2=[s:g_white,s:g_gray,s:t_white,s:t_gray]
let s:V3=[s:g_white,s:g_black,s:t_white,s:t_black]
let g:airline#themes#mayukai#palette.visual=airline#themes#generate_color_map(s:V1,s:V2,s:V3)

let s:C1=[s:g_black,s:g_mindaro,s:t_black,s:t_mindaro]
let s:C2=[s:g_white,s:g_gray,s:t_white,s:t_gray]
let s:C3=[s:g_white,s:g_black,s:t_white,s:t_black]
let g:airline#themes#mayukai#palette.commandline=airline#themes#generate_color_map(s:C1,s:C2,s:C3)
