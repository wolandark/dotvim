" Mono.vim -- Vim color scheme.
" Author:      wolandark (contact-woland@proton.me)
" Webpage:     http://wolandark.github.io
" Description: A somber monochromatic colorscheme with almost no syntax highlights
" Last Change: 2024-06-24

hi clear

if exists("syntax_on")
  syntax reset
  endif

  let colors_name = "mono"

  if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
                 hi shShebang ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#f7f7f7 gui=NONE
             hi Normal ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#7c7c7c gui=NONE
             hi NonText ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#a0a0a0 gui=NONE
                 hi Comment ctermbg=NONE ctermfg=239 cterm=NONE guibg=NONE guifg=#525252 gui=NONE
             hi Constant ctermbg=NONE ctermfg=243 cterm=NONE guibg=NONE guifg=#747474 gui=NONE
             hi Error ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#a0a0a0 gui=NONE
             hi Identifier ctermbg=NONE ctermfg=250 cterm=NONE guibg=NONE guifg=#b9b9b9 gui=NONE
             hi Ignore ctermbg=NONE ctermfg=239 cterm=NONE guibg=NONE guifg=#525252 gui=NONE
             hi PreProc ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#868686 gui=NONE
             hi Special ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
             hi Statement ctermbg=NONE ctermfg=245 cterm=NONE guibg=NONE guifg=#8e8e8e gui=NONE
             hi String ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
                 hi Todo ctermbg=NONE ctermfg=242 cterm=NONE guibg=NONE guifg=#686868 gui=NONE
             hi Type ctermbg=NONE ctermfg=243 cterm=NONE guibg=NONE guifg=#747474 gui=NONE
             hi Underlined ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#868686 gui=NONE
             hi StatusLine ctermbg=245 ctermfg=0 cterm=NONE guibg=#8e8e8e guifg=#000000 gui=NONE
             hi StatusLineNC ctermbg=245 ctermfg=0 cterm=NONE guibg=#8e8e8e guifg=#000000 gui=NONE
                     hi VertSplit ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#a0a0a0 gui=NONE
             hi TabLine ctermbg=245 ctermfg=0 cterm=NONE guibg=#8e8e8e guifg=#000000 gui=NONE
             hi TabLineFill ctermbg=245 ctermfg=0 cterm=NONE guibg=#8e8e8e guifg=#000000 gui=NONE
             hi TabLineSel ctermbg=8 ctermfg=0 cterm=NONE guibg=#7c7c7c guifg=#000000 gui=NONE
             hi Title ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
             hi CursorLine ctermbg=8 ctermfg=15 cterm=NONE guibg=#7c7c7c guifg=#ffffff gui=NONE
             hi LineNr ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#868686 gui=NONE
             hi CursorLineNr ctermbg=NONE ctermfg=243 cterm=NONE guibg=NONE guifg=#747474 gui=NONE
             hi helpLeadBlank ctermbg=NONE ctermfg=245 cterm=NONE guibg=NONE guifg=#8e8e8e gui=NONE
             hi helpNormal ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#a0a0a0 gui=NONE
             hi Visual ctermbg=15 ctermfg=0 cterm=NONE guibg=#f7f7f7 guifg=#000000 gui=NONE
             hi VisualNOS ctermbg=15 ctermfg=0 cterm=NONE guibg=#f7f7f7 guifg=#000000 gui=NONE
             hi Pmenu ctermbg=15 ctermfg=242 cterm=NONE guibg=#ffffff guifg=#686868 gui=NONE
             hi PmenuSbar ctermbg=15 ctermfg=15 cterm=NONE guibg=#ffffff guifg=#f7f7f7 gui=NONE
             hi PmenuSel ctermbg=15 ctermfg=15 cterm=NONE guibg=#ffffff guifg=#f7f7f7 gui=NONE
             hi PmenuThumb ctermbg=15 ctermfg=15 cterm=NONE guibg=#ffffff guifg=#f7f7f7 gui=NONE
             hi CocMenuSel ctermbg=243 ctermfg=0 cterm=NONE guibg=#747474 guifg=#000000 gui=NONE
             hi FoldColumn ctermbg=NONE ctermfg=242 cterm=NONE guibg=NONE guifg=#686868 gui=NONE
             hi Folded ctermbg=NONE ctermfg=243 cterm=NONE guibg=NONE guifg=#747474 gui=NONE
             hi WildMenu ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#868686 gui=NONE
             hi SpecialKey ctermbg=NONE ctermfg=250 cterm=NONE guibg=NONE guifg=#b9b9b9 gui=NONE
             hi DiffAdd ctermbg=245 ctermfg=0 cterm=NONE guibg=#8e8e8e guifg=#000000 gui=NONE
             hi DiffChange ctermbg=0 ctermfg=243 cterm=NONE guibg=#000000 guifg=#747474 gui=NONE
             hi DiffDelete ctermbg=102 ctermfg=0 cterm=NONE guibg=#868686 guifg=#000000 gui=NONE
             hi DiffText ctermbg=8 ctermfg=0 cterm=NONE guibg=#7c7c7c guifg=#000000 gui=NONE
             hi IncSearch ctermbg=8 ctermfg=0 cterm=NONE guibg=#7c7c7c guifg=#000000 gui=NONE
             hi Search ctermbg=245 ctermfg=0 cterm=NONE guibg=#8e8e8e guifg=#000000 gui=NONE
             hi Directory ctermbg=NONE ctermfg=239 cterm=NONE guibg=NONE guifg=#525252 gui=NONE
             hi MatchParen ctermbg=NONE ctermfg=239 cterm=NONE guibg=NONE guifg=#525252 gui=NONE
             hi SpellBad ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#a0a0a0 gui=NONE
             hi SpellCap ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
             hi SpellLocal ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
             hi SpellRare ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
             hi ColorColumn ctermbg=8 ctermfg=15 cterm=NONE guibg=#7c7c7c guifg=#ffffff gui=NONE
             hi SignColumn ctermbg=0 ctermfg=239 cterm=NONE guibg=#000000 guifg=#525252 gui=NONE
             hi ErrorMsg ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#a0a0a0 gui=NONE
             hi ModeMsg ctermbg=NONE ctermfg=239 cterm=NONE guibg=NONE guifg=#525252 gui=NONE
             hi MoreMsg ctermbg=NONE ctermfg=245 cterm=NONE guibg=NONE guifg=#8e8e8e gui=NONE
             hi Question ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#7c7c7c gui=NONE
                 hi Cursor ctermbg=242 ctermfg=0 cterm=NONE guibg=#686868 guifg=#000000 gui=NONE
                 hi CursorColumn ctermbg=245 ctermfg=15 cterm=NONE guibg=#8e8e8e guifg=#ffffff gui=NONE
             hi QuickFixLine ctermbg=8 ctermfg=8 cterm=NONE guibg=#7c7c7c guifg=#7c7c7c gui=NONE
                 hi Conceal ctermbg=NONE ctermfg=243 cterm=NONE guibg=NONE guifg=#747474 gui=NONE
             hi ToolbarLine ctermbg=0 ctermfg=245 cterm=NONE guibg=#000000 guifg=#8e8e8e gui=NONE
             hi ToolbarButton ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#7c7c7c gui=NONE
             hi debugPC ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#7c7c7c gui=NONE
             hi debugBreakpoint ctermbg=0 ctermfg=247 cterm=NONE guibg=#000000 guifg=#a0a0a0 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
         set t_Co=16
         
    hi shShebang ctermbg=NONE ctermfg=color16 cterm=NONE
    hi Normal ctermbg=color1 ctermfg=color2 cterm=NONE
    hi NonText ctermbg=NONE ctermfg=color4 cterm=NONE
    hi Comment ctermbg=NONE ctermfg=color9 cterm=NONE
    hi Constant ctermbg=NONE ctermfg=color14 cterm=NONE
    hi Error ctermbg=NONE ctermfg=color12 cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=color8 cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=color9 cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=color7 cterm=NONE
    hi Special ctermbg=NONE ctermfg=color10 cterm=NONE
    hi Statement ctermbg=NONE ctermfg=color11 cterm=NONE
    hi String ctermbg=NONE ctermfg=color10 cterm=NONE
    hi Todo ctermbg=NONE ctermfg=color13 cterm=NONE
    hi Type ctermbg=NONE ctermfg=color14 cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=color15 cterm=NONE
    hi StatusLine ctermbg=color3 ctermfg=color1 cterm=NONE
    hi StatusLineNC ctermbg=color3 ctermfg=color1 cterm=NONE
    hi VertSplit ctermbg=NONE ctermfg=color4 cterm=NONE
    hi TabLine ctermbg=color3 ctermfg=color1 cterm=NONE
    hi TabLineFill ctermbg=color3 ctermfg=color1 cterm=NONE
    hi TabLineSel ctermbg=color10 ctermfg=color1 cterm=NONE
    hi Title ctermbg=NONE ctermfg=color2 cterm=NONE
    hi CursorLine ctermbg=color2 ctermfg=color17 cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=color15 cterm=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=color14 cterm=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=color11 cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=color12 cterm=NONE
    hi Visual ctermbg=color16 ctermfg=color1 cterm=NONE
    hi VisualNOS ctermbg=color16 ctermfg=color1 cterm=NONE
    hi Pmenu ctermbg=color17 ctermfg=color13 cterm=NONE
    hi PmenuSbar ctermbg=color17 ctermfg=color16 cterm=NONE
    hi PmenuSel ctermbg=color17 ctermfg=color16 cterm=NONE
    hi PmenuThumb ctermbg=color17 ctermfg=color16 cterm=NONE
    hi CocMenuSel ctermbg=color6 ctermfg=color1 cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=color5 cterm=NONE
    hi Folded ctermbg=NONE ctermfg=color6 cterm=NONE
    hi WildMenu ctermbg=NONE ctermfg=color7 cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=color8 cterm=NONE
    hi DiffAdd ctermbg=color11 ctermfg=color1 cterm=NONE
    hi DiffChange ctermbg=color1 ctermfg=color14 cterm=NONE
    hi DiffDelete ctermbg=color7 ctermfg=color1 cterm=NONE
    hi DiffText ctermbg=color10 ctermfg=color1 cterm=NONE
    hi IncSearch ctermbg=color2 ctermfg=color1 cterm=NONE
    hi Search ctermbg=color3 ctermfg=color1 cterm=NONE
    hi Directory ctermbg=NONE ctermfg=color9 cterm=NONE
    hi MatchParen ctermbg=NONE ctermfg=color9 cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=color12 cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=color2 cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=color2 cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=color2 cterm=NONE
    hi ColorColumn ctermbg=color2 ctermfg=color17 cterm=NONE
    hi SignColumn ctermbg=color1 ctermfg=color9 cterm=NONE
    hi ErrorMsg ctermbg=NONE ctermfg=color12 cterm=NONE
    hi ModeMsg ctermbg=NONE ctermfg=color9 cterm=NONE
    hi MoreMsg ctermbg=NONE ctermfg=color3 cterm=NONE
    hi Question ctermbg=NONE ctermfg=color10 cterm=NONE
    hi Cursor ctermbg=color13 ctermfg=color1 cterm=NONE
    hi CursorColumn ctermbg=color3 ctermfg=color17 cterm=NONE
    hi QuickFixLine ctermbg=color2 ctermfg=color10 cterm=NONE
    hi Conceal ctermbg=NONE ctermfg=color14 cterm=NONE
    hi ToolbarLine ctermbg=color1 ctermfg=color3 cterm=NONE
    hi ToolbarButton ctermbg=color1 ctermfg=color2 cterm=NONE
    hi debugPC ctermbg=color1 ctermfg=color2 cterm=NONE
    hi debugBreakpoint ctermbg=color1 ctermfg=color4 cterm=NONE
endif
     
hi link EndOfBuffer NonText
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link Terminal Normal

" Generated with RNB (https://github.com/romainl/vim-rnb)
