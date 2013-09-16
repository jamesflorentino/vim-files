
" Configuration file for vim
set modelines=0   " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible  " Use Vim defaults instead of 100% vi compatibility

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
filetype plugin on
filetype plugin indent on
filetype indent on

" =============================================
set hidden
" =============================================
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
" =============================================
set nowrap        " don't wrap lines
"set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
"set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch
" =============================================
set nobackup
set noswapfile
" =============================================
let javascript_enable_domhtmlcss=1
let g:javascript_conceal=1
" for GUI macvim
set t_Co=256
syntax enable
syntax on
set guioptions=t
set cursorline

set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
""set ts=2 sw=2 et
""let g:indent_guides_start_level=1
""let g:indent_guides_guide_size=1

"" colors jellybeans
"" colors chlordane
colors jellybeans

"" set guifont=Source\ Code\ Pro\:h14
"" set guifont=Source\ Code\ Pro\ Light\:h10
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\:h10
"" set transparency=0
" =============================================

"set cursorcolumn
" =============================================
set list
" set listchars=tab:\|.,trail:.,extends:#,nbsp:.
set listchars=tab:\|.,trail:.,extends:#,nbsp:.
" =============================================
nnoremap ; :
" =============================================
set clipboard=unnamed
if $TMUX == ''
    set clipboard+=unnamed
endif
" =============================================
" NERDTree config
let NERDTreeChDirMode=2
" =============================================

" settings for coffeescript 2 indents
" set ts=2 sw=2 et
set foldmethod=indent

" Increase padding of the psace between the sidebar
" "set nuw=6

" syntax highlighting 

au! BufRead,BufNewFile *.md set filetype=markdown

map <F1> :nohlsearch<Bar>:echo<CR>
map <F2> :set expandtab!<CR>:retab!<CR>:IndentGuidesDisable<CR>
map <F3> :set expandtab<CR>:retab!<CR>:IndentGuidesEnable<CR>
map <F4> :UltiSnipsEdit<CR>
map <F5> gf<CR>
map <F8> :so ~/.vimrc<CR>
map <Space> za
nmap <F9> :TagbarToggle<CR>



"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black ctermbg=2
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=3

" disable middlemouse
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
noremap <c-tab> :tabnext<cr>

inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

vnoremap <silent> <Leader>is :<C-U>let old_reg_a=@a<CR>
 \:let old_reg=@"<CR>
 \gv"ay
 \:let @a=substitute(@a, '.\(.*\)\@=',
 \ '\=@a[strlen(submatch(1))]', 'g')<CR>
 \gvc<C-R>a<Esc>
 \:let @a=old_reg_a<CR>
 \:let @"=old_reg<CR>
