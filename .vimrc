call plug#begin('~/dotvim/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Autocompleted
Plug 'Valloric/YouCompleteMe'

"Закрывающие скобки
Plug 'jiangmiao/auto-pairs'

"Python-mode
Plug 'python-mode/python-mode', { 'branch': 'develop' }

"neocomplete
Plug 'shougo/neocomplete.vim'

" AsyncRun
Plug 'skywind3000/asyncrun.vim'

"Подсветка изменений файлов
Plug 'airblade/vim-gitgutter'

"Открывание файлов
Plug 'kien/ctrlp.vim'

"jedi-vim
Plug 'davidhalter/jedi-vim'

"Emmet
Plug 'mattn/emmet-vim'

"SuperTab
"Plug 'ervandew/supertab'

"Tagbar
Plug 'majutsushi/tagbar' 

"fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

"Displays function signatures from completions in the command line.
Plug 'Shougo/echodoc.vim'

"Git
Plug 'tpope/vim-fugitive'

"Syntacis
Plug 'scrooloose/syntastic'

"C++
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rip-rip/clang_complete'

Plug 'fedorenchik/qt-support.vim'

" Slime
Plug 'jpalardy/vim-slime'

"GDB - debugger
" Plug 'vim-scripts/Conque-GDB'

"c.vim comments
" Plug 'vim-scripts/DoxygenToolkit.vim'

" comments C/C++/python
Plug 'doxygen/doxygen'

" powerline
Plug 'powerline/powerline'

"-------------------------------------

"UltiSnips
Plug 'sirver/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

call plug#end()
"+--------------------------------------------------------+


syntax on
set colorcolumn=80


"------------------------------C++--------------------------
" https://habr.com/ru/post/221267/

" make vim clang_complete.vmb -c 'so %' -c 'q'
" path to directory where library can be found
" let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" let g:clang_library_path='/usr/lib/'
" or path directly to the library file
" let g:clang_library_path='/usr/lib/llvm3.5/lib/libclang.so.1'
" let g:clang_library_path='~/dotvim/ycm_dir/clang+llvm-8.0.0-aarch64-linux-gnu/lib/'

" If equal to 1, it will do some snippets magic on code placeholders like
" function argument, template parameters, etc.
" let g:clang_snippets = 1

" let g:clang_snippets_engine = 'clang_complete'

let g:clang_complete_auto = 1
" If equal to 1, open quickfix window on error.

let g:clang_complete_copen = 1
let g:clang_snippets_engine = 'ultisnips'

" If equal to 0, nothing is selected.
" If equal to 1, automatically select the first entry in the popup menu, but
" without inserting it into the code.
" If equal to 2, automatically select the first entry in the popup menu, and
" insert it into the code.
let g:clang_auto_select = 1

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 1
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" Include additional hints (function arguments, templatest, etc.)
let g:clang_snippets = 1

" Use ultispips for additional hints (for templates hints 
" autogenerations were in dropdown menus)
let g:ycm_use_clangd = 1

"let g:ycm_global_ycm_extra_conf = '~/dotvim/.vim/plugged/YouCompleteMe/STUFF/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/dotvim/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

" Automatically close the tips window after selection a tooltip
let g:clang_close_preview=1


" If equal to 1, it will add optional arguments to the function call snippet.
" Snippet replaceable object will not be only the argument, but the preceding
" comma will be included as well, so you can press backspace to delete the
" optional argument, while the replaceable is selected.
let g:clang_complete_optional_args_in_snippets = 1

let g:clang_user_options = '-std=c++17'
let g:clang_c_options = '-std=gnu17'
let g:clang_cpp_options = '-std=c++17 -stdlib=libc++'

" Note: This option is specific to clang_complete snippets engine.
" If equal to 1, clang_complete will add a trailing placeholder after functions
" to let you add you continue writing code faster.
" Default: 0
let g:clang_trailing_placeholder = 1

" Omnicppcomplete compatibility mode. Keeps omni auto-completion in control of
" omnicppcomplete, disables clang's auto-completion (|g:clang_complete_auto|)
" and enables only <C-X><C-U> as main clang completion function.
" Default: 0
let g:clang_omnicppcomplete_compliance = 1
"
" args
let g:ycm_clangd_args = ['-log=verbose', '-pretty']
"------------------------------------------------------------

" set exrc
" set secure
" 
" augroup project
"   autocmd!
"   autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
" augroup END
" 
" let &path.="src/include,/usr/include/AL,"
" 
" set includeexpr=substitute(v:fname,'\\.','/','g')
" 
" "start programm
" "nnoremap :!./my_pr<cr>
" 
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

" By default, YCM's filepath completion will interpret relative paths like '../'
" as being relative to the folder of the file of the currently active buffer.
" Setting this option will force YCM to always interpret relative paths as being
" relative to Vim's current working directory.
" 
" Default: '0'

let g:ycm_filepath_completion_use_working_dir = 1
"------------------------------------------------------------ 


set laststatus=0 "2


"Поиск set hlsearch
set incsearch
set ignorecase
set hls
set smartcase
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" Keep more content at the bottom of the buffer
set scrolloff=3


" Directories for swp files
set dir=~/dotvim/vim_backups/swap/
set backupdir=~/dotvim/vim_backups/backup/
set viewdir=~/dotvim/vim_backups/


"Сворачивание
set foldmethod=indent


filetype indent on
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set expandtab


"Wrapping text by default
set wrap
set linebreak

" 256-color terminal
set t_Co=256

" colorscheme
colorscheme torte

" Кодировка текста по умолчанию utf8
set termencoding=utf8

" Show (partial) command in the status line
set showcmd

" Не выгружать буфер, когда переключаемся на другой
set hidden

" Подсвечивать линию текста, на которой находится курсор
set cursorline

" Нумерация строк
set relativenumber
"autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
"autocmd InsertLeave * highlight CursorLine guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue

"Autoread
set autoread

" Не выгружает буфер
set mousemodel=popup

"WildMenu
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start


" Russian letters
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.,ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>


" Russian layout
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
" inoremap <C-L>
highlight lCursor guifg=NONE guibg=Cyan


"--------------------------------------------------------------------------
func! Timerfunc(timer)
  :normal yyp<cr>
endfunc
"--------------------------------------------------------------------------


" ==========================================================================
"                                  MAPPINGS
" ==========================================================================
"

map <C-n> :NERDTreeToggle<CR>
map <leader> <Plug>(easymotion-prefix)


map<silent> <C-h> :call WinMove('h')<CR>
map<silent> <C-j> :call WinMove('j')<CR>
map<silent> <C-k> :call WinMove('k')<CR>
map<silent> <C-l> :call WinMove('l')<CR>


function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction


"YouCompleteMe-------------------------

let g:ycm_collect_identifiers_from_tags_files = 1 
" ycm сам определяет подходящую версию интерпретатора, но, почему-то, 
" с 3 версией дополнения не показываются - ставим вторую.
"let g:ycm_server_python_interpreter='python'
let g:ycm_python_binary_path = '/usr/bin/python3.8'
let g:ycm_use_clangd = 1

" закрыть превью после ввода, например, при нажатии на закрывающую скобку ")"
let g:ycm_autoclose_preview_window_after_completion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string


"jedi-vim -----------------------------

"let g:jedi#auto_initialization = 1
"let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "F"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"


"python-mode --------------------------

let g:pymode_trim_whitespaces = 1
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport = 1
let g:pymode_folding = 0
let g:pymode_doc = 0


"Setting TagbarToggle -----------------

nmap <F8> :TagbarToggle<CR>

"сортировать в том порядке, в котором тег появляется в коде, а не по имени
let g:tagbar_sort = 0

let g:tagbar_width = 35

"замена стандартных стрелочек раскрытия/сворачивания группы тегов
let g:tagbar_iconchars = ['+', '-']

"обеспечиваем переключатель
let g:tagbar_map_close = '<C-m>'

" let g:tagbar_ctags_bin = '~/dotvim/TEST/tagbar/'

"Убираем переменные из списка
let g:tagbar_type_php = {
  \'ctagstype': 'php',
  \'kinds': [
    \'i:interfaces',
    \'c:classes',
    \'d:constants',
    \'f:functions'
  \]
\}

let g:tagbar_type_javascript = {
      \'ctagstype':'JavaScript',
      \'kinds' : [
    \'f:functions',
    \'c:classes',
    \'m:methods',
    \'p:properties'
  \]
\}


"История изменений 
"-----------------------------------------------------------------------

if version >=703
  set history=64
  set undolevels=128
  set undodir=~/dotvim/.vim/undodir/
  set undofile
  set undolevels=1000
  set undoreload =10000
endif


"Быстрое переключение буферов-------------------------------------------

function! ChangeBuf(cmd)
  if (&modified && &modifiable)
    execute ":w"
  endif
  execute a:cmd
endfunction
" nnoremap <silent> <C-i> : call ChangeBuf(":b#")<CR>
nnoremap <silent> <C-o> : call ChangeBuf(":bn")<CR>
nnoremap <silent> <C-i> : call ChangeBuf(":bp")<CR>

" ~/.vimrc
set tags+=tags,tags.vendors
set tags+=./tags;/;


"Setting Syntastic----------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" UltiSnips---------------------------------------------------------------

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips/', 'Ultisnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" let g:UltiSnipsExpandTrigger       = '<c-j>'
" let g:UltiSnipsJumpForwardTrigger  = '<c-j>'
" let g:UltiSnipsJumpBackwardTrigger = '<c-p>'
" let g:UltiSnipsListSnippets        = '<c-k>'


"Show tabs-----------------------------------------------------------------

if has('multi_byte')
    if version >= 700
        set listchars=tab:>·,trail:»,extends:>,precedes:<,space:·
        hi NonText ctermfg=10 guifg=#4a4a59
        hi SpecialKey ctermfg=10 guifg=#4a4a59
    else
        set list
        set listchars=tab:»\ ,trail:·,eol:¶,extends:>,precedes:<,nbsp:_
    endif
endif
nmap <leader>l :set list!<CR>


"------------------------------- COMMENTS python ---------------------------

vnoremap <silent> # :s/^/#<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

"--------------------------COMMENTS C++------------------------------------

vnoremap <silent> @ :s/^/\/\/ <cr>:noh<cr>
vnoremap <silent> -@ :s/^\/\/ //<cr>:noh<cr>

"------------------------- VIM SCRIPTS ---------------------------------

:ab #b /************************************************
:ab #e ************************************************/

"------------------------- Doxygen -------------------------------------

 let  g:C_UseTool_cmake   = 'yes'     
 let  g:C_UseTool_doxygen = 'yes'

"-------------------------   GDB   -------------------------------------

let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly  


" set path += /home/_who/Qt/Tools/QtCreator/lib/Qt/lib

"-------------------------   SLIME   -------------------------------------
let g:slime_target = "vimterminal"

"-------------------------   ASNCRUN   -----------------------------------
nnoremap <F3> :AsyncRun ctags -R<CR>

"------------------- Shortcut Create class -------------------------------
"C++ Class Generator
 function! Class(ClassName)
    "==================  editing header file =====================
     let header = "includes/".a:ClassName.".hpp"
     " :vsp %:h/.hpp
     :execute ":vsp ".tolower(header)
     call append(0, "/* ".tolower(a:ClassName).".hpp */")
     call append(2,"#ifndef ".toupper(a:ClassName)."_HPP")
     call append(3,"#define ".toupper(a:ClassName)."_HPP")
     call append(4," ")
     call append(5,"class ".a:ClassName )
     call append(6, "{")
     call append(7, "public:")
     call append(8, "   ".a:ClassName."();")
     call append(9, "   virtual ~".a:ClassName."();")
     call append(10, "protected:")
     call append(11, "private:")
     call append(12, "};")
     call append(13,"#endif // ".toupper(a:ClassName)."_HPP")
     :execute 'write' tolower(header)
   "================== editing source file ========================
     let src    = "srcs/".a:ClassName.".cpp"
     " :vsp %:h/.cpp
     :execute ":vsp ".tolower(src)
     call append(0, "/* ".tolower(a:ClassName).".cpp */")
     call append(2,"#include \"".tolower(a:ClassName).".hpp\"")
     call append(3," ")
     call append(4,a:ClassName."::".a:ClassName."()")
     call append(5,"{")
     call append(6,"//ctor ")
     call append(7,"}")
     call append(8," ")
     call append(9," ")
     call append(10,a:ClassName."::~".a:ClassName."()")
     call append(11,"{")
     call append(12,"//dtor ")
     call append(13,"}")
     :execute 'write' tolower(src)
endfunction    "C++ Class Generator

command! -nargs=1 Class call Class(<f-args>)
"------------------- Shortcut Create class -------------------------------
"C++ Class OPEN
 function! Open(ClassName)
    "==================  editing header file =====================
     let header = "includes/".a:ClassName.".hpp"
     " :vsp %:h/.hpp
     :execute ":vsp ".tolower(header)
     :execute 'open' tolower(header)
   "================== editing source file ========================
     let src    = "srcs/".a:ClassName.".cpp"
     " :vsp %:h/.cpp
     :execute ":vsp ".tolower(src)
     :execute 'open' tolower(src)
endfunction    "C++ Class OPEN
command! -nargs=1 Open call Open(<f-args>)
"--------------------------------------------------------------------------
"
" nmap <F9> :CopyDefinition<CR>
" nmap <F10> :ImplementDefinition<CR>
command! CopyDefinition :call s:GetDefinitionInfo()
command! ImplementDefinition :call s:ImplementDefinition()
function! s:GetDefinitionInfo()
  exe 'normal ma'
  " Get class
  call search('^\s*\<class\>', 'b')
  exe 'normal ^w"ayw'
  let s:class = @a
  let l:ns = search('^\s*\<namespace\>', 'b')
  " Get namespace
  if l:ns != 0
    exe 'normal ^w"ayw'
    let s:namespace = @a
  else
    let s:namespace = ''
  endif
  " Go back to definition
  exe 'normal `a'
  exe 'normal "aY'
  let s:defline = substitute(@a, ';\n', '', '')
endfunction
 
function! s:ImplementDefinition()
  call append('.', s:defline)
  exe 'normal j'
  " Remove keywords
  s/\<virtual\>\s*//e
  s/\<static\>\s*//e
  if s:namespace == ''
    let l:classString = s:class . "::"
  else
    let l:classString = s:namespace . "::" . s:class . "::"
  endif
  " Remove default parameters
  s/\s\{-}=\s\{-}[^,)]\{1,}//e
  " Add class qualifier
  exe 'normal ^f(bi' . l:classString
  " Add brackets
  exe "normal $o{\<CR>\<TAB>\<CR>}\<CR>\<ESC>kkkk"
  " Fix indentation
  exe 'normal =4j^'
endfunction

"--------------------------------------------------------------------------

"-----     Neocopmlete    -------------------------------------------------
let g:neocomplcache_enable_at_startup            = 1
let g:neocomplcache_enable_smart_case            = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion   = 1
let g:neocomplcache_min_syntax_length            = 2

if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif

let g:neocomplcache_force_overwrite_completefunc = 1

let g:neocomplcache_force_omni_patterns.c      = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp    = '[^.[:digit:] *\t]\%(\.\|->\)'
    \ . '\|\h\w*::'
let g:neocomplcache_force_omni_patterns.objc   = '[^.[:digit:] *\t]\%(\.\|->\)'
    \ . '\|\h\w*::'
let g:neocomplcache_force_omni_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)'
    \ . '\|\h\w*::'

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"--------------------------------------------------------------------------
