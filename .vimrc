:set t_Co=256
:set background=dark
:set tabstop=4
:set shiftwidth=4
:set expandtab

:syntax on
:set list
:set listchars=tab:T>
:hi ExtraWhitespace ctermbg=lightgray
:match ExtraWhitespace /\s\+$/
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
:autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * match ExtraWhitespace /\s\+$/
:autocmd BufWinLeave * call clearmatches()
:hi ColorColumn ctermbg=237
:set colorcolumn=80
:set laststatus=2
:set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
:hi StatusLine ctermfg=238 ctermbg=246
:set ignorecase
:set smartcase
:set incsearch
:set hlsearch
:set number
:hi LineNr term=None cterm=None ctermfg=245 ctermbg=237
:au FileType matlab set sw=2 sts=2 et
:au FileType python set sw=4 sts=4 et
:silent !echo -ne "\033]12;grey\007"
:let &t_SI = "\<Esc>[6 q"
:let &t_SR = "\<Esc>[4 q"
:let &t_EI = "\<Esc>[2 q"
:autocmd VimLeave * silent !echo -ne "\033]12;lightgray\007"
:hi TabLineSel ctermfg=White ctermbg=241
:hi TabLine ctermfg=244 ctermbg=237
:hi TabLineFill ctermfg=237 ctermbg=DarkGray
:hi ErrorMsg ctermfg=237 ctermbg=LightGreen

vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
