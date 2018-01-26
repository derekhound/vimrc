" Misc {{{

" set non compatible mode
set nocompatible

" minimal number of screen lines to keep above and below the cursor
set scrolloff=7

" auto read when a file is changed from the outside
set autoread

" configure backspace so it acts as it should act
set backspace=indent,eol,start

" }}}

" Backups {{{

" don't make a backup before overwritubg a file
set nobackup
set nowritebackup

" don't use a swapfile for the buffer
set noswapfile

" }}}

" Colors {{{

" enable syntax highlighting
syntax enable

" awesome colorscheme
colorscheme wombat256

" number of colors
set t_Co=256
set background=light

" }}}

" File {{{

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" }}}

" Folding {{{

" enable folding
set foldenable

" fold based on indent level
set foldmethod=indent

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" space open/closes folds
nnoremap <space> za

" }}}

" Line {{{

" lines longer than the width of the window will wrap
set wrap

" wrap long lines at a character in 'breakat' rather at the last character
set linebreak

" display lines downward
nnoremap j gj

" display lines upward
nnoremap k gk

" }}}

" Spaces & Tabs {{{

" hitting Tab in insert mode will produce the appropriate number of spaces
set expandtab

" how many columns a tab counts for
set tabstop=4

" how many columns vim uses when you hit Tab in insert mode
set softtabstop=4

" how many columns text is indented with the reindent operations (<< and >>)
set shiftwidth=4

" make Vim only use these settings for this file
set modelines=10

" loads the file indent.vim in runtimepath
filetype indent on

" loads the file ftplugin.vim in runtimepath
filetype plugin on

" copy indent from current line when starting a new line
set autoindent

" do smart autoindenting when starting a new line
set smartindent

" strings to use in 'list' mode. It is a comma separated list of string
" settings.
set listchars=tab:>\ ,trail:.

" }}}

" Searching {{{

" ignore case when searching
set ignorecase

" search as characters are entered
set incsearch

" highlight all matches
set hlsearch

" }}}

" Sound {{{

" Don't ring the bell (beep or screen flash) for error messages.
set noerrorbells

" Dont't use visual bell.  The terminal code to display the visual bell is 
" given with 't_vb'.
set novisualbell        " don't use visual bell
set t_vb=               " the terminal code to display the visual bell

" }}}

" Tags {{{

"the magic is the ‘;’ at end. it will make vim tags file search go up from
"current directory until it finds one.
set tags=.tags;

" }}}

" UI Layout {{{

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
set lazyredraw

" higlight matching parenthesis
set showmatch

" }}}

" Shortcuts {{{

" remapped the leader key to , (comma) instead of the default \ (backslash)
let mapleader=","

" reload the vimrc file
nnoremap <silent> <leader>r :so $MYVIMRC<CR>

" toggle line number
nnoremap <F5> :set number!<CR>
nnoremap <F6> :set list!<CR>
nnoremap <F7> :set paste!<CR>
nnoremap <F8> :GitGutterToggle<CR>

" fast saving
nnoremap <leader>w :w!<CR>

" quit the current window
nnoremap q :q<CR>

" exit vim
nnoremap qa :qa<CR>

" stop the highlighting for the hlsearch option
nnoremap <leader><space> :noh<CR>

" }}}

" AutoGroups {{{

augroup configgroup
    autocmd!
    autocmd BufReadPost * :call <SID>PositionCursor()
    autocmd BufEnter *.md setlocal filetype=markdown
    autocmd BufWrite *.h,*.c,*.cpp,*.php,*.py,*.js,*.txt,*.java,*.md,*.rb,*.sh :call <SID>StripTrailingSpaces()
augroup END

" }}}

" Functions {{{

" move the cursor to its last position 
function! <SID>PositionCursor()
    if line("'\"") > 0 && line("'\"") <= line("$")
        exe "normal! g`\""
    endif
endfunction

" strip trailing spaces in each line
function! <SID>StripTrailingSpaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do it
    %s/\s\+$//e
    " restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Read text, such as commit messages, notes, tags and branch descriptions,
" from the standard input and clean it in the manner used by Git.
function! <SID>CleanFile()
    " save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do it
    %!git stripspace
    " restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" }}}

" Plugin: Plug {{{
"
" A minimalist Vim plugin manager.
"
" https://github.com/junegunn/vim-plug

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'shougo/neocomplcache.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
call plug#end()

" }}}

" Plugin: Airline {{{
"
" Lean & mean status/tabline for vim that's light as air
"
" https://github.com/vim-airline/vim-airline

" the status line appear all the time
set laststatus=2

" select airline colorscheme
let g:airline_theme = 'wombat'

" use plain ascii symbol
let g:airline_symbols_ascii = 1

" You must define the dictionary first before setting values. Also, it's a
" good idea to check whether it exists as to avoid accidentally overwriting
" its contents.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"
" tagbar
"

" disable tagbar integration
let g:airline#extensions#tagbar#enabled = 0

"
" tabline
"

" enable enhanced tabline
let g:airline#extensions#tabline#enabled = 1

" disable displaying open splits per tab
let g:airline#extensions#tabline#show_splits = 0

" disable displaying buffers with a single tab.
let g:airline#extensions#tabline#show_buffers = 0

" configure how numbers are displayed in tab mode. (1: tab number)
let g:airline#extensions#tabline#tab_nr_type = 1

" disable displaying tab type
let g:airline#extensions#tabline#show_tab_type = 0

" enable displaying index of the buffer.
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" configure separators for the tabline only
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" configure whether close button should be shown
let g:airline#extensions#tabline#show_close_button = 0

"
" hunks
"

" disable showing a summary of changed hunks under source control
let g:airline#extensions#hunks#enabled = 0

" }}}

" Plugin: CtrlP {{{
"
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"
" https://github.com/ctrlpvim/ctrlp.vim

" order, height and position of the match window
let g:ctrlp_match_window = 'bottom,order:ttb'

" how to set CtrlP's local working directory
let g:ctrlp_working_path_mode = 0

" hide stuff when using globpath()
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" }}}

" Plugin: Nerdtree {{{
"
" The NERDTree is a file system explorer for the Vim editor. Using this
" plugin, users can visually browse complex directory hierarchies, quickly
" open files for reading or editing, and perform basic file system operations.
"
" https://github.com/scrooloose/nerdtree
"

" shortcuts
nnoremap <F3> :NERDTreeToggle<CR>

" show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" display files 
let NERDTreeShowFiles=1

" display hidden files
let NERDTreeShowHidden=1

" put the tree window on the right side
let NERDTreeWinPos='right'

" don't close the tree window after opening a file
let NERDTreeQuitOnOpen=0

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]

" }}}

" Plugin: Neocompletecache {{{
"
" Neocomplete is the abbreviation of "neo-completion with cache". It provides
" keyword completion system by maintaining a cache of keywords in the current
" buffer.
"
" https://github.com/Shougo/neocomplcache.vim

" use neocomplete
let g:neocomplcache_enable_at_startup = 1

" use smartcase
let g:neocomplcache_enable_smart_case = 1

" set minimum syntax keyword length
let g:neocomplcache_min_syntax_length = 3

" }}}

" Plugin: Syntastic {{{
"
" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. It
" runs files through external syntax checkers and displays any resulting
" errors to the user. 
"
" https://github.com/vim-syntastic/syntastic

" shortcuts
nnoremap <F9> :SyntasticCheck<CR>:Errors<CR>

" }}}

" Plugin: Tagbar {{{
"
" Tagbar is a Vim plugin that provides an easy way to browse the tags of the
" current file and get an overview of its structure. It does this by creating
" a sidebar that displays the ctags-generated tags of the current file,
" ordered by their scope.
"
" https://github.com/majutsushi/tagbar

" shortcuts
nnoremap <F2> :TagbarToggle<CR>

" tagbar window will be opened on the left side
let g:tagbar_left = 1

" width of the tagbar window
let g:tagbar_width = 30

" }}}

" vim:foldmethod=marker:foldlevel=0
