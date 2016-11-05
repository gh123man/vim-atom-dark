" This scheme was created by CSApproxSnapshot
" on mié, 03 dic 2014

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=231 gui=NONE guibg=#202020 guifg=#F8F8F2
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=148 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_normal_tabsel_0 term=bold cterm=bold ctermbg=148 ctermfg=235 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_normal_1 term=NONE cterm=NONE ctermbg=240 ctermfg=231 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_normal_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_normal_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_normal_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_normal term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_normal_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=252 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_normal_0 term=NONE cterm=NONE ctermbg=252 ctermfg=241 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=252 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#465457
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#465457
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=248 gui=NONE guibg=bg guifg=#AAAAAA
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=235 ctermfg=153 gui=NONE guibg=#232526 guifg=#92C5F7
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=187 ctermfg=16 gui=reverse guibg=#202020 guifg=#C4BE89
    CSAHi Search term=reverse cterm=NONE ctermbg=193 ctermfg=16 gui=NONE guibg=#B4EC85 guifg=#202020
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=156 gui=bold guibg=bg guifg=#A8FF60
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=156 gui=bold guibg=bg guifg=#A8FF60
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=66 gui=NONE guibg=#232526 guifg=#465457
    CSAHi LightLineRight_insert_0 term=NONE cterm=NONE ctermbg=153 ctermfg=30 gui=NONE guibg=#87dfff guifg=#005f5f
    CSAHi LightLineRight_insert_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=153 gui=NONE guibg=#262626 guifg=#87dfff
    CSAHi LightLineRight_insert_tabsel_0 term=NONE cterm=NONE ctermbg=153 ctermfg=235 gui=NONE guibg=#87dfff guifg=#262626
    CSAHi LightLineRight_insert_1_2 term=NONE cterm=NONE ctermbg=31 ctermfg=37 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineRight_insert_1 term=NONE cterm=NONE ctermbg=37 ctermfg=153 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi LightLineRight_insert_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=37 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineRight_insert_tabsel_1 term=NONE cterm=NONE ctermbg=37 ctermfg=235 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineRight_insert_2_3 term=NONE cterm=NONE ctermbg=31 ctermfg=31 gui=NONE guibg=#005f87 guifg=#005f87
    CSAHi LightLineRight_insert_2 term=NONE cterm=NONE ctermbg=31 ctermfg=153 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=231 gui=undercurl guibg=bg  guisp=#FFFFFF
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=123 gui=undercurl guibg=bg  guisp=#70F0F0
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=117 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244  gui=NONE guibg=#808080 
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=117 gui=NONE guibg=Black guifg=#66D9EF
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=#202020 guifg=#808080
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg  gui=bold guibg=bg 
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=234 ctermfg=234 gui=reverse guibg=#202020 guifg=#202020
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=59  gui=NONE guibg=#293739 
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi NERDTreeLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_0 term=NONE cterm=NONE ctermbg=252 ctermfg=235 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_normal_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_normal_1 term=NONE cterm=NONE ctermbg=240 ctermfg=250 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_normal_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_normal_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_normal_2_3 term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_normal_2 term=NONE cterm=NONE ctermbg=236 ctermfg=247 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_normal_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel_2 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_insert_tabsel_2 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineRight_insert_tabsel_3 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineRight_insert_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineLeft_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=252  gui=NONE guibg=lightgray 
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=238 ctermfg=188 gui=NONE guibg=#444444 guifg=#B7B9B8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=234 ctermfg=117 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi LightLineLeft_inactive_0 term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_inactive_0_1 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_normal_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_3 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_normal_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi LightLineLeft_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=244 gui=underline guibg=bg guifg=#808080
    CSAHi Ignore term=NONE cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=bg guifg=#808080
    CSAHi Error term=reverse cterm=NONE ctermbg=52 ctermfg=156 gui=NONE guibg=#1E0010 guifg=#A8FF60
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=156 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=156 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#DAD085
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_inactive_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineMiddle_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_inactive_0_1 term=NONE cterm=NONE ctermbg=235 ctermfg=241 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_0 term=NONE cterm=NONE ctermbg=241 ctermfg=235 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=241 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=241 ctermfg=235 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_1 term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_inactive_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=156 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#C4BE89
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#DAD085
    CSAHi LightLineRight_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_inactive_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_inactive_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_inactive_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0 term=bold cterm=bold ctermbg=148 ctermfg=28 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLine term=underline cterm=NONE ctermbg=59 gui=NONE guibg=#293739 
    CSAHi LightLineRight_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8F8F8F
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#BCA3A3
    CSAHi Cursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi iCursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=232  gui=NONE guibg=#080808 
    CSAHi LightLineLeft_command_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=148 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_command_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=148 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_command_tabsel_0 term=bold cterm=bold ctermbg=148 ctermfg=235 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_command_1 term=NONE cterm=NONE ctermbg=240 ctermfg=231 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_command_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_command_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_command_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_command term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_command_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=252 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_command_0 term=NONE cterm=NONE ctermbg=252 ctermfg=241 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=252 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi LightLineRight_command_tabsel_0 term=NONE cterm=NONE ctermbg=252 ctermfg=235 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_command_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_command_1 term=NONE cterm=NONE ctermbg=240 ctermfg=250 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_command_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_command_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_command_2_3 term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_command_2 term=NONE cterm=NONE ctermbg=236 ctermfg=247 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_command_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=231 gui=NONE guibg=bg guifg=#FFFFFF
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_command_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_command_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_command_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_3 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi LightLineLeft_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=117 gui=bold guibg=bg guifg=#66D9EF
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=231 ctermfg=66 gui=NONE guibg=fg guifg=#455354
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Visual term=reverse cterm=NONE ctermbg=59  gui=NONE guibg=#403D3D 
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=59  gui=NONE guibg=#403D3D 
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=59 ctermfg=231 gui=NONE guibg=#333333 guifg=#FFFFFF
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=117 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi LightLineLeft_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0 term=bold cterm=bold ctermbg=148 ctermfg=28 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi LightLineLeft_normal_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=148 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_insert_0 term=bold cterm=bold ctermbg=231 ctermfg=30 gui=bold guibg=#ffffff guifg=#005f5f
    CSAHi LightLineLeft_insert_0_1 term=NONE cterm=NONE ctermbg=37 ctermfg=231 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=231 gui=bold guibg=#262626 guifg=#ffffff
    CSAHi LightLineLeft_insert_tabsel_0 term=bold cterm=bold ctermbg=231 ctermfg=235 gui=bold guibg=#ffffff guifg=#262626
    CSAHi LightLineLeft_insert_1 term=NONE cterm=NONE ctermbg=37 ctermfg=231 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_1_2 term=NONE cterm=NONE ctermbg=31 ctermfg=37 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineLeft_insert_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=37 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineLeft_insert_tabsel_1 term=NONE cterm=NONE ctermbg=37 ctermfg=235 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineMiddle_insert term=NONE cterm=NONE ctermbg=31 ctermfg=153 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_0_1 term=NONE cterm=NONE ctermbg=37 ctermfg=153 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=66 gui=NONE guibg=#202020 guifg=#465457
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=66 gui=NONE guibg=#202020 guifg=#465457
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=23  gui=NONE guibg=#13354A 
    CSAHi DiffChange term=bold cterm=NONE ctermbg=59 ctermfg=144 gui=NONE guibg=#4C4745 guifg=#89807D
    CSAHi DiffDelete term=bold cterm=bold ctermbg=52 ctermfg=126 gui=bold guibg=#1E0010 guifg=#960050
    CSAHi DiffText term=reverse cterm=NONE ctermbg=59  gui=NONE guibg=#4C4745 
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=235 ctermfg=187 gui=NONE guibg=#232526 guifg=#DAD085
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg  guisp=#FF0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=105 gui=undercurl guibg=bg  guisp=#7070F0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=255 gui=NONE guibg=#202020 guifg=#F8F8F2
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=190 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_normal_tabsel_0 term=bold cterm=bold ctermbg=190 ctermfg=235 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_normal_1 term=NONE cterm=NONE ctermbg=240 ctermfg=255 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_normal_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_normal_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_normal_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_normal term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_normal_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=252 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_normal_0 term=NONE cterm=NONE ctermbg=252 ctermfg=241 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=252 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#465457
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=102 gui=bold guibg=bg guifg=#465457
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=188 gui=NONE guibg=bg guifg=#AAAAAA
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=235 ctermfg=159 gui=NONE guibg=#232526 guifg=#92C5F7
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=223 ctermfg=16 gui=reverse guibg=#202020 guifg=#C4BE89
    CSAHi Search term=reverse cterm=NONE ctermbg=193 ctermfg=16 gui=NONE guibg=#B4EC85 guifg=#202020
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=192 gui=bold guibg=bg guifg=#A8FF60
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=192 gui=bold guibg=bg guifg=#A8FF60
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=102 gui=NONE guibg=#232526 guifg=#465457
    CSAHi LightLineRight_insert_0 term=NONE cterm=NONE ctermbg=159 ctermfg=30 gui=NONE guibg=#87dfff guifg=#005f5f
    CSAHi LightLineRight_insert_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=159 gui=NONE guibg=#262626 guifg=#87dfff
    CSAHi LightLineRight_insert_tabsel_0 term=NONE cterm=NONE ctermbg=159 ctermfg=235 gui=NONE guibg=#87dfff guifg=#262626
    CSAHi LightLineRight_insert_1_2 term=NONE cterm=NONE ctermbg=31 ctermfg=38 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineRight_insert_1 term=NONE cterm=NONE ctermbg=38 ctermfg=159 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi LightLineRight_insert_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=38 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineRight_insert_tabsel_1 term=NONE cterm=NONE ctermbg=38 ctermfg=235 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineRight_insert_2_3 term=NONE cterm=NONE ctermbg=31 ctermfg=31 gui=NONE guibg=#005f87 guifg=#005f87
    CSAHi LightLineRight_insert_2 term=NONE cterm=NONE ctermbg=31 ctermfg=159 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=255 gui=undercurl guibg=bg  guisp=#FFFFFF
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=159 gui=undercurl guibg=bg  guisp=#70F0F0
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=123 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244  gui=NONE guibg=#808080 
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=123 gui=NONE guibg=Black guifg=#66D9EF
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=#202020 guifg=#808080
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg  gui=bold guibg=bg 
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=234 ctermfg=234 gui=reverse guibg=#202020 guifg=#202020
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=59  gui=NONE guibg=#293739 
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi NERDTreeLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_0 term=NONE cterm=NONE ctermbg=252 ctermfg=235 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_normal_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_normal_1 term=NONE cterm=NONE ctermbg=240 ctermfg=250 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_normal_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_normal_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_normal_2_3 term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_normal_2 term=NONE cterm=NONE ctermbg=236 ctermfg=247 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_normal_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel_2 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_insert_tabsel_2 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineRight_insert_tabsel_3 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineRight_insert_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineLeft_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=231  gui=NONE guibg=lightgray 
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=238 ctermfg=188 gui=NONE guibg=#444444 guifg=#B7B9B8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=234 ctermfg=123 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=123 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi LightLineLeft_inactive_0 term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_inactive_0_1 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_normal_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_3 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_normal_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi LightLineLeft_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=244 gui=underline guibg=bg guifg=#808080
    CSAHi Ignore term=NONE cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=bg guifg=#808080
    CSAHi Error term=reverse cterm=NONE ctermbg=52 ctermfg=192 gui=NONE guibg=#1E0010 guifg=#A8FF60
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#DAD085
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_inactive_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineMiddle_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_inactive_0_1 term=NONE cterm=NONE ctermbg=235 ctermfg=241 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_0 term=NONE cterm=NONE ctermbg=241 ctermfg=235 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=241 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=241 ctermfg=235 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_1 term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_inactive_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=123 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#C4BE89
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#DAD085
    CSAHi LightLineRight_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_inactive_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_inactive_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_inactive_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0 term=bold cterm=bold ctermbg=190 ctermfg=28 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLine term=underline cterm=NONE ctermbg=60 gui=NONE guibg=#293739
    CSAHi LightLineRight_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=123 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=123 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8F8F8F
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=NONE guibg=bg guifg=#BCA3A3
    CSAHi Cursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi iCursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=232  gui=NONE guibg=#080808 
    CSAHi LightLineLeft_command_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=190 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_command_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=190 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_command_tabsel_0 term=bold cterm=bold ctermbg=190 ctermfg=235 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_command_1 term=NONE cterm=NONE ctermbg=240 ctermfg=255 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_command_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_command_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_command_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_command term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_command_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=252 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_command_0 term=NONE cterm=NONE ctermbg=252 ctermfg=241 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=252 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi LightLineRight_command_tabsel_0 term=NONE cterm=NONE ctermbg=252 ctermfg=235 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_command_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_command_1 term=NONE cterm=NONE ctermbg=240 ctermfg=250 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_command_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_command_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_command_2_3 term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_command_2 term=NONE cterm=NONE ctermbg=236 ctermfg=247 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_command_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=255 gui=NONE guibg=bg guifg=#FFFFFF
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_command_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_command_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_command_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_3 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi LightLineLeft_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=123 gui=bold guibg=bg guifg=#66D9EF
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=255 ctermfg=102 gui=NONE guibg=fg guifg=#455354
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Visual term=reverse cterm=NONE ctermbg=95  gui=NONE guibg=#403D3D 
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=95  gui=NONE guibg=#403D3D 
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=236 ctermfg=255 gui=NONE guibg=#333333 guifg=#FFFFFF
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=123 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi LightLineLeft_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0 term=bold cterm=bold ctermbg=190 ctermfg=28 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi LightLineLeft_normal_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=190 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_insert_0 term=bold cterm=bold ctermbg=255 ctermfg=30 gui=bold guibg=#ffffff guifg=#005f5f
    CSAHi LightLineLeft_insert_0_1 term=NONE cterm=NONE ctermbg=38 ctermfg=255 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=255 gui=bold guibg=#262626 guifg=#ffffff
    CSAHi LightLineLeft_insert_tabsel_0 term=bold cterm=bold ctermbg=255 ctermfg=235 gui=bold guibg=#ffffff guifg=#262626
    CSAHi LightLineLeft_insert_1 term=NONE cterm=NONE ctermbg=38 ctermfg=255 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_1_2 term=NONE cterm=NONE ctermbg=31 ctermfg=38 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineLeft_insert_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=38 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineLeft_insert_tabsel_1 term=NONE cterm=NONE ctermbg=38 ctermfg=235 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineMiddle_insert term=NONE cterm=NONE ctermbg=31 ctermfg=159 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_0_1 term=NONE cterm=NONE ctermbg=38 ctermfg=159 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=102 gui=NONE guibg=#202020 guifg=#465457
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=102 gui=NONE guibg=#202020 guifg=#465457
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=24  gui=NONE guibg=#13354A 
    CSAHi DiffChange term=bold cterm=NONE ctermbg=102 ctermfg=145 gui=NONE guibg=#4C4745 guifg=#89807D
    CSAHi DiffDelete term=bold cterm=bold ctermbg=52 ctermfg=162 gui=bold guibg=#1E0010 guifg=#960050
    CSAHi DiffText term=reverse cterm=NONE ctermbg=102  gui=NONE guibg=#4C4745 
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=235 ctermfg=229 gui=NONE guibg=#232526 guifg=#DAD085
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg  guisp=#FF0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=147 gui=undercurl guibg=bg  guisp=#7070F0
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=231 gui=NONE guibg=#202020 guifg=#F8F8F2
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=148 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_normal_tabsel_0 term=bold cterm=bold ctermbg=148 ctermfg=235 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_normal_1 term=NONE cterm=NONE ctermbg=240 ctermfg=231 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_normal_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_normal_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_normal_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_normal term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_normal_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=252 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_normal_0 term=NONE cterm=NONE ctermbg=252 ctermfg=59 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=252 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#465457
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=59 gui=bold guibg=bg guifg=#465457
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=248 gui=NONE guibg=bg guifg=#AAAAAA
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=235 ctermfg=117 gui=NONE guibg=#232526 guifg=#92C5F7
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=180 ctermfg=16 gui=reverse guibg=#202020 guifg=#C4BE89
    CSAHi Search term=reverse cterm=NONE ctermbg=156 ctermfg=16 gui=NONE guibg=#B4EC85 guifg=#202020
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=155 gui=bold guibg=bg guifg=#A8FF60
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=155 gui=bold guibg=bg guifg=#A8FF60
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=59 gui=NONE guibg=#232526 guifg=#465457
    CSAHi LightLineRight_insert_0 term=NONE cterm=NONE ctermbg=117 ctermfg=23 gui=NONE guibg=#87dfff guifg=#005f5f
    CSAHi LightLineRight_insert_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=117 gui=NONE guibg=#262626 guifg=#87dfff
    CSAHi LightLineRight_insert_tabsel_0 term=NONE cterm=NONE ctermbg=117 ctermfg=235 gui=NONE guibg=#87dfff guifg=#262626
    CSAHi LightLineRight_insert_1_2 term=NONE cterm=NONE ctermbg=24 ctermfg=31 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineRight_insert_1 term=NONE cterm=NONE ctermbg=31 ctermfg=117 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi LightLineRight_insert_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineRight_insert_tabsel_1 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineRight_insert_2_3 term=NONE cterm=NONE ctermbg=24 ctermfg=24 gui=NONE guibg=#005f87 guifg=#005f87
    CSAHi LightLineRight_insert_2 term=NONE cterm=NONE ctermbg=24 ctermfg=117 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=24 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=231 gui=undercurl guibg=bg  guisp=#FFFFFF
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=87 gui=undercurl guibg=bg  guisp=#70F0F0
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=244  gui=NONE guibg=#808080 
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=Black guifg=#66D9EF
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=#202020 guifg=#808080
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg  gui=bold guibg=bg 
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=234 ctermfg=234 gui=reverse guibg=#202020 guifg=#202020
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=23  gui=NONE guibg=#293739 
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi NERDTreeLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_0 term=NONE cterm=NONE ctermbg=252 ctermfg=235 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_normal_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_normal_1 term=NONE cterm=NONE ctermbg=240 ctermfg=250 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_normal_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_normal_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_normal_2_3 term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_normal_2 term=NONE cterm=NONE ctermbg=236 ctermfg=247 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_normal_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel_2 term=NONE cterm=NONE ctermbg=24 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_insert_tabsel_2 term=NONE cterm=NONE ctermbg=24 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=24 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineRight_insert_tabsel_3 term=NONE cterm=NONE ctermbg=24 ctermfg=235 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineRight_insert_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=24 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineLeft_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=235 ctermfg=160 gui=NONE guibg=lightgray 
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=238 ctermfg=145 gui=NONE guibg=#444444 guifg=#B7B9B8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=234 ctermfg=81 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi LightLineLeft_inactive_0 term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_inactive_0_1 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_normal_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_3 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_normal_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi LightLineLeft_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=244 gui=underline guibg=bg guifg=#808080
    CSAHi Ignore term=NONE cterm=NONE ctermbg=234 ctermfg=244 gui=NONE guibg=bg guifg=#808080
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=155 gui=NONE guibg=#1E0010 guifg=#A8FF60
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_inactive_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineMiddle_inactive term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_inactive_0_1 term=NONE cterm=NONE ctermbg=235 ctermfg=59 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_0 term=NONE cterm=NONE ctermbg=59 ctermfg=235 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=59 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=59 ctermfg=235 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_1 term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_inactive_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#C4BE89
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=#DAD085
    CSAHi LightLineRight_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_inactive_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_inactive_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_inactive_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0 term=bold cterm=bold ctermbg=148 ctermfg=22 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLine term=NONE cterm=NONE ctermbg=238 ctermfg=NONE gui=NONE guibg=#293739
    CSAHi LightLineRight_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8F8F8F
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#BCA3A3
    CSAHi Cursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi iCursor term=NONE cterm=NONE ctermbg=243 ctermfg=255 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=232  gui=NONE guibg=#080808 
    CSAHi LightLineLeft_command_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=148 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_command_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=148 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_command_tabsel_0 term=bold cterm=bold ctermbg=148 ctermfg=235 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_command_1 term=NONE cterm=NONE ctermbg=240 ctermfg=231 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_command_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_command_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_command_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_command term=NONE cterm=NONE ctermbg=236 ctermfg=245 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_command_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=252 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_command_0 term=NONE cterm=NONE ctermbg=252 ctermfg=59 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=252 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi LightLineRight_command_tabsel_0 term=NONE cterm=NONE ctermbg=252 ctermfg=235 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_command_1_2 term=NONE cterm=NONE ctermbg=236 ctermfg=240 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_command_1 term=NONE cterm=NONE ctermbg=240 ctermfg=250 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_command_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=240 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_command_tabsel_1 term=NONE cterm=NONE ctermbg=240 ctermfg=235 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_command_2_3 term=NONE cterm=NONE ctermbg=236 ctermfg=236 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_command_2 term=NONE cterm=NONE ctermbg=236 ctermfg=247 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_command_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Todo term=NONE cterm=NONE ctermbg=234 ctermfg=231 gui=NONE guibg=bg guifg=#FFFFFF
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_command_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_command_tabsel_2 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_command_2_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_3 term=NONE cterm=NONE ctermbg=236 ctermfg=235 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_3_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=236 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi LightLineLeft_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=81 gui=bold guibg=bg guifg=#66D9EF
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=231 ctermfg=59 gui=NONE guibg=fg guifg=#455354
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=232 gui=reverse guibg=#080808 guifg=#808080
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Visual term=reverse cterm=NONE ctermbg=59  gui=NONE guibg=#403D3D 
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=59  gui=NONE guibg=#403D3D 
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=236 ctermfg=231 gui=NONE guibg=#333333 guifg=#FFFFFF
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi LightLineLeft_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0 term=bold cterm=bold ctermbg=148 ctermfg=22 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi LightLineLeft_normal_0_1 term=NONE cterm=NONE ctermbg=240 ctermfg=148 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_insert_0 term=bold cterm=bold ctermbg=231 ctermfg=23 gui=bold guibg=#ffffff guifg=#005f5f
    CSAHi LightLineLeft_insert_0_1 term=NONE cterm=NONE ctermbg=31 ctermfg=231 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_0_tabsel term=bold cterm=bold ctermbg=235 ctermfg=231 gui=bold guibg=#262626 guifg=#ffffff
    CSAHi LightLineLeft_insert_tabsel_0 term=bold cterm=bold ctermbg=231 ctermfg=235 gui=bold guibg=#ffffff guifg=#262626
    CSAHi LightLineLeft_insert_1 term=NONE cterm=NONE ctermbg=31 ctermfg=231 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_1_2 term=NONE cterm=NONE ctermbg=24 ctermfg=31 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineLeft_insert_1_tabsel term=NONE cterm=NONE ctermbg=235 ctermfg=31 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineLeft_insert_tabsel_1 term=NONE cterm=NONE ctermbg=31 ctermfg=235 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineMiddle_insert term=NONE cterm=NONE ctermbg=24 ctermfg=117 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_0_1 term=NONE cterm=NONE ctermbg=31 ctermfg=117 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=59 gui=NONE guibg=#202020 guifg=#465457
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=59 gui=NONE guibg=#202020 guifg=#465457
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=23  gui=NONE guibg=#13354A 
    CSAHi DiffChange term=bold cterm=NONE ctermbg=59 ctermfg=102 gui=NONE guibg=#4C4745 guifg=#89807D
    CSAHi DiffDelete term=bold cterm=bold ctermbg=16 ctermfg=89 gui=bold guibg=#1E0010 guifg=#960050
    CSAHi DiffText term=reverse cterm=NONE ctermbg=59  gui=NONE guibg=#4C4745 
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=235 ctermfg=186 gui=NONE guibg=#232526 guifg=#DAD085
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg  guisp=#FF0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=63 gui=undercurl guibg=bg  guisp=#7070F0
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#202020 guifg=#F8F8F2
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_tabsel term=bold cterm=bold ctermbg=80 ctermfg=56 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_normal_tabsel_0 term=bold cterm=bold ctermbg=56 ctermfg=80 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_normal_1 term=NONE cterm=NONE ctermbg=81 ctermfg=79 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_normal_1_2 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_normal_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_normal_tabsel_1 term=NONE cterm=NONE ctermbg=81 ctermfg=80 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_normal term=NONE cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_normal_0_1 term=NONE cterm=NONE ctermbg=81 ctermfg=86 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_normal_0 term=NONE cterm=NONE ctermbg=86 ctermfg=81 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_0_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=86 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#465457
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=81 gui=bold guibg=bg guifg=#465457
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=84 gui=NONE guibg=bg guifg=#AAAAAA
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=80 ctermfg=43 gui=NONE guibg=#232526 guifg=#92C5F7
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=57 ctermfg=16 gui=reverse guibg=#202020 guifg=#C4BE89
    CSAHi Search term=reverse cterm=NONE ctermbg=61 ctermfg=16 gui=NONE guibg=#B4EC85 guifg=#202020
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=45 gui=bold guibg=bg guifg=#A8FF60
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=45 gui=bold guibg=bg guifg=#A8FF60
    CSAHi LineNr term=underline cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#232526 guifg=#465457
    CSAHi LightLineRight_insert_0 term=NONE cterm=NONE ctermbg=43 ctermfg=21 gui=NONE guibg=#87dfff guifg=#005f5f
    CSAHi LightLineRight_insert_0_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=43 gui=NONE guibg=#262626 guifg=#87dfff
    CSAHi LightLineRight_insert_tabsel_0 term=NONE cterm=NONE ctermbg=43 ctermfg=80 gui=NONE guibg=#87dfff guifg=#262626
    CSAHi LightLineRight_insert_1_2 term=NONE cterm=NONE ctermbg=21 ctermfg=22 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineRight_insert_1 term=NONE cterm=NONE ctermbg=22 ctermfg=43 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi LightLineRight_insert_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=22 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineRight_insert_tabsel_1 term=NONE cterm=NONE ctermbg=22 ctermfg=80 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineRight_insert_2_3 term=NONE cterm=NONE ctermbg=21 ctermfg=21 gui=NONE guibg=#005f87 guifg=#005f87
    CSAHi LightLineRight_insert_2 term=NONE cterm=NONE ctermbg=21 ctermfg=43 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=21 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=79 gui=undercurl guibg=bg  guisp=#FFFFFF
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=47 gui=undercurl guibg=bg  guisp=#70F0F0
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=16 ctermfg=43 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=83  gui=NONE guibg=#808080 
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=16 ctermfg=43 gui=NONE guibg=Black guifg=#66D9EF
    CSAHi TabLine term=underline cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#202020 guifg=#808080
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg  gui=bold guibg=bg 
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=80 ctermfg=80 gui=reverse guibg=#202020 guifg=#202020
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=80  gui=NONE guibg=#293739 
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi NERDTreeLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_0 term=NONE cterm=NONE ctermbg=86 ctermfg=80 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_normal_1_2 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_normal_1 term=NONE cterm=NONE ctermbg=81 ctermfg=85 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_normal_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_normal_tabsel_1 term=NONE cterm=NONE ctermbg=81 ctermfg=80 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_normal_2_3 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_normal_2 term=NONE cterm=NONE ctermbg=80 ctermfg=84 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_normal_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_2 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel_2 term=NONE cterm=NONE ctermbg=21 ctermfg=80 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_insert_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_insert_tabsel_2 term=NONE cterm=NONE ctermbg=21 ctermfg=80 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineLeft_insert_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=21 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineRight_insert_tabsel_3 term=NONE cterm=NONE ctermbg=21 ctermfg=80 gui=NONE guibg=#005f87 guifg=#262626
    CSAHi LightLineRight_insert_3_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=21 gui=NONE guibg=#262626 guifg=#005f87
    CSAHi LightLineLeft_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_insert_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchCchar term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynMtchGroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=86  gui=NONE guibg=lightgray 
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#444444 guifg=#B7B9B8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=41 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=80 ctermfg=43 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi LightLineLeft_inactive_0 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_inactive_0_1 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_normal_tabsel_2 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_normal_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_normal_tabsel_3 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_normal_3_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_normal_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi LightLineLeft_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=83 gui=underline guibg=bg guifg=#808080
    CSAHi Ignore term=NONE cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=bg guifg=#808080
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=45 gui=NONE guibg=#1E0010 guifg=#A8FF60
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=45 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=45 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=41 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=41 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=41 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#DAD085
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_inactive_0_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineMiddle_inactive term=NONE cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_inactive_0_1 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_0 term=NONE cterm=NONE ctermbg=81 ctermfg=80 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_0_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#606060
    CSAHi LightLineRight_inactive_tabsel_0 term=NONE cterm=NONE ctermbg=81 ctermfg=80 gui=NONE guibg=#606060 guifg=#262626
    CSAHi LightLineRight_inactive_1_2 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_1 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_inactive_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_insert_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=45 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#DAD085
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#C4BE89
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=#DAD085
    CSAHi LightLineRight_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_inactive_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_inactive_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_inactive_tabsel_1 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_inactive_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_inactive_tabsel_2 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_inactive_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_inactive_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0 term=bold cterm=bold ctermbg=56 ctermfg=20 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLine term=underline cterm=NONE ctermbg=80 gui=NONE guibg=#293739
    CSAHi LightLineRight_insert_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#66D9EF
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#92C5F7
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#8F8F8F
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#BCA3A3
    CSAHi Cursor term=NONE cterm=NONE ctermbg=82 ctermfg=87 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi iCursor term=NONE cterm=NONE ctermbg=82 ctermfg=87 gui=NONE guibg=#777777 guifg=#F1F1F1
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=16  gui=NONE guibg=#080808 
    CSAHi LightLineLeft_command_0_1 term=NONE cterm=NONE ctermbg=81 ctermfg=56 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_command_0_tabsel term=bold cterm=bold ctermbg=80 ctermfg=56 gui=bold guibg=#262626 guifg=#afdf00
    CSAHi LightLineLeft_command_tabsel_0 term=bold cterm=bold ctermbg=56 ctermfg=80 gui=bold guibg=#afdf00 guifg=#262626
    CSAHi LightLineLeft_command_1 term=NONE cterm=NONE ctermbg=81 ctermfg=79 gui=NONE guibg=#585858 guifg=#ffffff
    CSAHi LightLineLeft_command_1_2 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineLeft_command_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineLeft_command_tabsel_1 term=NONE cterm=NONE ctermbg=81 ctermfg=80 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineMiddle_command term=NONE cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#303030 guifg=#8a8a8a
    CSAHi LightLineRight_command_0_1 term=NONE cterm=NONE ctermbg=81 ctermfg=86 gui=NONE guibg=#585858 guifg=#d0d0d0
    CSAHi LightLineRight_command_0 term=NONE cterm=NONE ctermbg=86 ctermfg=81 gui=NONE guibg=#d0d0d0 guifg=#606060
    CSAHi LightLineRight_normal_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_insert_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=86 gui=NONE guibg=#262626 guifg=#d0d0d0
    CSAHi LightLineRight_command_tabsel_0 term=NONE cterm=NONE ctermbg=86 ctermfg=80 gui=NONE guibg=#d0d0d0 guifg=#262626
    CSAHi LightLineRight_command_1_2 term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#303030 guifg=#585858
    CSAHi LightLineRight_command_1 term=NONE cterm=NONE ctermbg=81 ctermfg=85 gui=NONE guibg=#585858 guifg=#bcbcbc
    CSAHi LightLineRight_command_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=81 gui=NONE guibg=#262626 guifg=#585858
    CSAHi LightLineRight_command_tabsel_1 term=NONE cterm=NONE ctermbg=81 ctermfg=80 gui=NONE guibg=#585858 guifg=#262626
    CSAHi LightLineRight_command_2_3 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#303030
    CSAHi LightLineRight_command_2 term=NONE cterm=NONE ctermbg=80 ctermfg=84 gui=NONE guibg=#303030 guifg=#9e9e9e
    CSAHi LightLineRight_command_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_2 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Todo term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=bg guifg=#FFFFFF
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineRight_command_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bcbcbc
    CSAHi LightLineLeft_command_tabsel_2 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineLeft_command_2_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineRight_command_tabsel_3 term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#303030 guifg=#262626
    CSAHi LightLineRight_command_3_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#303030
    CSAHi LightLineLeft_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineRight_command_tabsel_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#262626 guifg=#262626
    CSAHi LightLineLeft_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_1_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_0_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_0 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_1 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi LightLineLeft_normal_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_tabsel_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_tabsel term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_2 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_command_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=43 gui=bold guibg=bg guifg=#66D9EF
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=79 ctermfg=21 gui=NONE guibg=fg guifg=#455354
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=83 ctermfg=16 gui=reverse guibg=#080808 guifg=#808080
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=83 ctermfg=16 gui=reverse guibg=#080808 guifg=#808080
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#B6B7EB
    CSAHi Visual term=reverse cterm=NONE ctermbg=80  gui=NONE guibg=#403D3D 
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=80  gui=NONE guibg=#403D3D 
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#333333 guifg=#FFFFFF
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=43 gui=NONE guibg=#202020 guifg=#66D9EF
    CSAHi LightLineLeft_normal_2_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_3 term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_3_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineRight_normal_raw_raw term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi LightLineLeft_normal_0 term=bold cterm=bold ctermbg=56 ctermfg=20 gui=bold guibg=#afdf00 guifg=#005f00
    CSAHi LightLineLeft_normal_0_1 term=NONE cterm=NONE ctermbg=81 ctermfg=56 gui=NONE guibg=#585858 guifg=#afdf00
    CSAHi LightLineLeft_insert_0 term=bold cterm=bold ctermbg=79 ctermfg=21 gui=bold guibg=#ffffff guifg=#005f5f
    CSAHi LightLineLeft_insert_0_1 term=NONE cterm=NONE ctermbg=22 ctermfg=79 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_0_tabsel term=bold cterm=bold ctermbg=80 ctermfg=79 gui=bold guibg=#262626 guifg=#ffffff
    CSAHi LightLineLeft_insert_tabsel_0 term=bold cterm=bold ctermbg=79 ctermfg=80 gui=bold guibg=#ffffff guifg=#262626
    CSAHi LightLineLeft_insert_1 term=NONE cterm=NONE ctermbg=22 ctermfg=79 gui=NONE guibg=#0087af guifg=#ffffff
    CSAHi LightLineLeft_insert_1_2 term=NONE cterm=NONE ctermbg=21 ctermfg=22 gui=NONE guibg=#005f87 guifg=#0087af
    CSAHi LightLineLeft_insert_1_tabsel term=NONE cterm=NONE ctermbg=80 ctermfg=22 gui=NONE guibg=#262626 guifg=#0087af
    CSAHi LightLineLeft_insert_tabsel_1 term=NONE cterm=NONE ctermbg=22 ctermfg=80 gui=NONE guibg=#0087af guifg=#262626
    CSAHi LightLineMiddle_insert term=NONE cterm=NONE ctermbg=21 ctermfg=43 gui=NONE guibg=#005f87 guifg=#87dfff
    CSAHi LightLineRight_insert_0_1 term=NONE cterm=NONE ctermbg=22 ctermfg=43 gui=NONE guibg=#0087af guifg=#87dfff
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg  gui=NONE guibg=bg 
    CSAHi Folded term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=#202020 guifg=#465457
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=16 ctermfg=81 gui=NONE guibg=#202020 guifg=#465457
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17  gui=NONE guibg=#13354A 
    CSAHi DiffChange term=bold cterm=NONE ctermbg=36 ctermfg=37 gui=NONE guibg=#4C4745 guifg=#89807D
    CSAHi DiffDelete term=bold cterm=bold ctermbg=16 ctermfg=33 gui=bold guibg=#1E0010 guifg=#960050
    CSAHi DiffText term=reverse cterm=NONE ctermbg=36  gui=NONE guibg=#4C4745 
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=80 ctermfg=57 gui=NONE guibg=#232526 guifg=#DAD085
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg  guisp=#FF0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=39 gui=undercurl guibg=bg  guisp=#7070F0
endif

if 1
    delcommand CSAHi
endif
