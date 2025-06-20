"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug used for plugin management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
" Make sure you use single quotes
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'craigemery/vim-autotag'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Yggdroot/indentLine'
" Plug 'scrooloose/syntastic'
" Plug 'w0rp/ale.git'
" Plug 'Valloric/YouCompleteMe'
" Plug 'chriskempson/base16-vim'
" Plug 'rdnetto/YCM-Generator'
Plug 'altercation/vim-colors-solarized'
 
" Call plug#end to update &runtimepath and initialize the plugin system.
" - It automatically executes `filetype plugin indent on` and `syntax enable`
cal plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline configiration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_theme="atomic"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YCM configiration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the default YCM extrac configuration path
" YCM will use one locating in the proj dir path if found
" Uncomment the following line to disable YCM
" let g:loaded_youcompleteme = 1
let g:ycm_global_ycm_extra_conf = '~/Projects/.ycm_extra_conf.py'
let g:ctrlp_root_markers = ['cscope.out', '.qmake.cache', '.ctlp.start']
let g:ycm_disable_for_files_larger_than_kb = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gitgutter configiration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the default gitgutter configurations
let g:gitgutter_max_signs = 2500 " Default value is 500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CSCOPE configiration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE issue to disable E568
set nocscopeverbose

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar configiration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set F8 as the leader key to enable tagbar
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easymotion configiration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 's' as the leader key to enable bi-directional easymotion

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*~

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set vims update time to 250 milliseconds
set updatetime=250


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Useful stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

noremap <C-n> :call NumberToggle()<cr>

