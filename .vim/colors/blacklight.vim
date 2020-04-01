" Vim color file - blacklight
" Generated by http://bytefluent.com/vivify 2018-02-08
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "blacklight"

"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#00afff guibg=#262626 guisp=#262626 gui=NONE ctermfg=39 ctermbg=235 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Float -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#708090 guibg=#f0e68c guisp=#f0e68c gui=NONE ctermfg=60 ctermbg=228 cterm=NONE
hi WildMenu guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi SignColumn guifg=#00ffff guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=14 ctermbg=7 cterm=NONE
hi SpecialComment guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Typedef guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Title guifg=#87dfff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Folded guifg=#ffd700 guibg=#4d4d4d guisp=#4d4d4d gui=NONE ctermfg=220 ctermbg=239 cterm=NONE
hi PreCondit guifg=#d7ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi Include guifg=#d7ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#7f7f7f guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=8 ctermbg=187 cterm=NONE
hi NonText guifg=#5fff87 guibg=NONE guisp=NONE gui=bold ctermfg=84 ctermbg=NONE cterm=bold
hi DiffText guifg=NONE guibg=#ff0000 guisp=#ff0000 gui=bold ctermfg=NONE ctermbg=196 cterm=bold
hi ErrorMsg guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=bold ctermfg=15 ctermbg=196 cterm=bold
hi Ignore guifg=#666666 guibg=NONE guisp=NONE gui=bold ctermfg=241 ctermbg=NONE cterm=bold
hi Debug guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Conditional guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Todo guifg=#ff4500 guibg=#eeee00 guisp=#eeee00 gui=NONE ctermfg=202 ctermbg=11 cterm=NONE
hi Special guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi LineNr guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#c2bfa5 guisp=#c2bfa5 gui=bold ctermfg=NONE ctermbg=187 cterm=bold
hi Label guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#000000 guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi Search guifg=#00ff00 guibg=#00af00 guisp=#00af00 gui=NONE ctermfg=10 ctermbg=34 cterm=NONE
hi Delimiter guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Statement guifg=#ffff87 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi Comment guifg=#c6c6c6 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi Character guifg=#d700ff guibg=NONE guisp=NONE gui=NONE ctermfg=165 ctermbg=NONE cterm=NONE
hi Number guifg=#d700ff guibg=NONE guisp=NONE gui=NONE ctermfg=165 ctermbg=NONE cterm=NONE
hi Boolean guifg=#ffff87 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi Operator guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Question guifg=#00ff7f guibg=NONE guisp=NONE gui=bold ctermfg=48 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#fa8072 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi DiffDelete guifg=#0000ff guibg=#008b8b guisp=#008b8b gui=bold ctermfg=21 ctermbg=30 cterm=bold
hi ModeMsg guifg=#daa520 guibg=NONE guisp=NONE gui=bold ctermfg=172 ctermbg=NONE cterm=bold
hi Define guifg=#d7ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi Function guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#d2b48c guibg=#4d4d4d guisp=#4d4d4d gui=NONE ctermfg=180 ctermbg=239 cterm=NONE
hi PreProc guifg=#d7ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi Visual guifg=#f0e68c guibg=#6b8e23 guisp=#6b8e23 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
hi MoreMsg guifg=#2e8b57 guibg=NONE guisp=NONE gui=bold ctermfg=29 ctermbg=NONE cterm=bold
hi VertSplit guifg=#7f7f7f guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=8 ctermbg=187 cterm=NONE
hi Exception guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Keyword guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Type guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#8b008b guisp=#8b008b gui=NONE ctermfg=NONE ctermbg=90 cterm=NONE
hi Cursor guifg=#303030 guibg=#00ff5f guisp=#00ff5f gui=NONE ctermfg=236 ctermbg=47 cterm=NONE
hi Error guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=bold ctermfg=15 ctermbg=196 cterm=bold
hi PMenu guifg=#7f7f7f guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=8 ctermbg=187 cterm=NONE
hi SpecialKey guifg=#9acd32 guibg=NONE guisp=NONE gui=NONE ctermfg=149 ctermbg=NONE cterm=NONE
hi Constant guifg=#d700ff guibg=NONE guisp=NONE gui=NONE ctermfg=165 ctermbg=NONE cterm=NONE
hi Tag guifg=#efface guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi String guifg=#d700ff guibg=NONE guisp=NONE gui=NONE ctermfg=165 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Repeat guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Directory guifg=#5fff87 guibg=NONE guisp=NONE gui=NONE ctermfg=84 ctermbg=NONE cterm=NONE
hi Structure guifg=#afffff guibg=NONE guisp=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE
hi Macro guifg=#d7ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi Underlined guifg=#00ff00 guibg=NONE guisp=NONE gui=underline ctermfg=10 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#00008b guisp=#00008b gui=NONE ctermfg=NONE ctermbg=18 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi lcursor guifg=#262626 guibg=#00afff guisp=#00afff gui=NONE ctermfg=235 ctermbg=39 cterm=NONE
