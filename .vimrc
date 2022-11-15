set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"-------------------------------------------------------------------->>>>>>>>>

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Autocompleted
Plugin 'Valloric/YouCompleteMe'

"vim-plug qt support for vim""
" Plugin 'cpiger/vim-qt'

"vim-qrc
" Plugin 'EdTsft/vim-qrc'

" shaders
Plugin 'tikhomirov/vim-glsl'

Plugin 'tpope/vim-fugitive'

"Plugin 'git: //git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" https: //github.com/sheerun/vim-polyglot // not use
" Plugin 'sheerun/vim-polyglot'
 
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ALE analysis
Plugin 'dense-analysis/ale'

" Neomake
" Plugin 'neomake/neomake'

" visualizes undo history 
Plugin 'mbbill/undotree'

"qml
Plugin 'peterhoeg/vim-qml'

"vimspector
Plugin 'puremourning/vimspector'

"Autocompleted
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" Wrapper of some termnial functions
" Plugin 'kassio/neoterm'

"CMake
Plugin 'vhdirk/vim-cmake'

"Закрывающие скобки
Plugin 'jiangmiao/auto-pairs'
" 
" "Python-mode
Plugin 'python-mode/python-mode', { 'branch': 'develop' }
 
"neocomplete
"Plugin 'shougo/neocomplete.vim'
 
" AsyncRun
Plugin 'skywind3000/asyncrun.vim'
" 
"Подсветка изменений файлов
Plugin 'airblade/vim-gitgutter'
 
"Открывание файлов
Plugin 'kien/ctrlp.vim'
 
"jedi-vim
Plugin 'davidhalter/jedi-vim'
 
"Emmet
Plugin 'mattn/emmet-vim'
 
"SuperTab
" Plugin 'ervandew/supertab'
 
"Tagbar
Plugin 'majutsushi/tagbar' 
 
"fzf is a general-purpose command-line fuzzy finder.
"""Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
 
"Displays function signatures from completions in the command line.
"""Plugin 'Shougo/echodoc.vim'
" 
" 
"Syntacis
" Plugin 'scrooloose/syntastic'
" 
" "C++
" Plugin 'octol/vim-cpp-enhanced-highlight'
"""Plugin 'rip-rip/clang_complete'
 
Plugin 'fedorenchik/qt-support.vim'
" qt doc web
Plugin 'xaizek/vim-qthelp'
 
" Slime
Plugin 'jpalardy/vim-slime'
 
"GDB - debugger
" Plugin 'vim-scripts/Conque-GDB'
 
"c.vim comments
Plugin 'vim-scripts/DoxygenToolkit.vim'

" codefmt -- dependencies
Plugin 'google/vim-maktaba'
" codefmt
Plugin 'google/vim-codefmt'
" codefmt -- dependencies
Plugin 'google/vim-glaive'

" " comments C/C++/python
"""Plugin 'doxygen/doxygen'
" 
" " powerline
" Plugin 'powerline/powerline'
" 
" "-------------------------------------
" 
"UltiSnips
Plugin 'sirver/ultisnips'
" 
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" theme
Plugin 'ErichDonGubler/vim-sublime-monokai'
" Plugin 'joshdick/onedark.vim'
Plugin 'dracula/vim'

" latex
" Plugin 'lervag/vimtex'


call vundle#end()            " required
" codefmt --- dependency
call glaive#Install()

Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"
"-------------------------------------------------------------------->>>>>>>>>

"---Load debugger---------------------------------------------------->>>>>>>>>

packadd termdebug
" leg g:termdebug_wide=1
let g:termdebug_wide = 163


"-------------------------------------------------------------------->>>>>>>>>

syntax on
filetype on
set colorcolumn=0


"!!!!!!!!!!!!!!!!
    " Do not display "Pattern not found" messages during YouCompleteMe completion.
    " Patch: https://groups.google.com/forum/#!topic/vim_dev/WeBBjkXE8H8
    if 1 && exists(':try')
        try
            set shortmess+=c
            " Catch "Illegal character" (and its translations).
        catch /E539: /
        endtry
    endif
    " let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
    " let g:ycm_rust_src_path = '/home/neg/src/1st_level/rust_src17/rustc-nightly/src'
    let g:ycm_filepath_completion_use_working_dir = 0
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_cache_omnifunc = 1
    let g:ycm_collect_identifiers_from_tags_files = 1
    "--[ syntastic enabling ]-----------------
    let g:ycm_show_diagnostics_ui          = 1
    let g:ycm_seed_identifiers_with_syntax = 0
    let g:ycm_use_ultisnips_completer      = 1

    " let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
    " let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
    " let g:ycm_key_invoke_completion = '<M-x>'
    let g:ycm_autoclose_preview_window_after_insertion = 1
    nnoremap <leader>y :YcmForceCompileAndDiagnostics<cr>

    " let g:ycm_add_preview_to_completeopt = 1
    " let g:ycm_autoclose_preview_window_after_completion = 0
    " let g:ycm_autoclose_preview_window_after_insertion = 0

    let g:ycm_semantic_triggers =  {
        \   'c' : ['->', '.'],
        \   'objc' : ['->', '.'],
        \   'cpp,objcpp' : ['->', '.', '::'],
        \   'perl' : ['->'],
        \   'php' : ['->', '::'],
        \   'cs,java,javascript,d,vim,ruby,perl6,scala,vb,elixir,go' : ['.'],
        \   'lua' : ['.', ':'],
        \   'erlang' : [':'],
        \   'ocaml' : ['.', '#'],
        \   'ruby' : ['.', '::'],
        \ }

    let g:ycm_collect_identifiers_from_tags_files = 0

    let g:ycm_filetype_blacklist = {
        \ 'notes'      : 1,
        \ 'markdown'   : 1,
        \ 'text'       : 1,
        \ 'unite'      : 1,
        \ 'conqueterm' : 1,
        \ 'asm'        : 1,
        \ 'tagbar'     : 1,
        \ 'qf'         : 1,
        \ 'vimwiki'    : 1,
        \ 'pandoc'     : 1,
        \ 'infolog'    : 1,
        \ 'mail'       : 1
        \}

    let g:ycm_min_num_identifier_candidate_chars = 4
    let g:ycm_filetype_specific_completion_to_disable = {'javascript': 1, 'python': 1}
    let g:ycm_goto_buffer_command = 'vertical-split'

	let g:clang_snippets_engine = 'ultisnips'
	let g:clang_auto_select = 1
	let g:clang_user_options = '-std=c++20'
	let g:clang_c_options = '-std=gnu20'
	let g:clang_cpp_options = '-std=c++20 -stdlib=libc++'
	let g:ycm_clangd_args = ['-log=verbose', '-pretty']

	" nnoremap <silent> <F3> :call youcompleteme#DisableCursorMovedAutocommands()<CR>
	" nnoremap <silent> <F4> :call youcompleteme#EnableCursorMovedAutocommands()<CR>

	function! s:SetCompleteFunc()
		if !g:neocomplete#force_overwrite_completefunc
			let &completefunc = 'youcompleteme#Complete'
			let &l:completefunc = 'youcompleteme#Complete'
		endif

		if pyeval( 'ycm_state.NativeFiletypeCompletionUsable()' )
			let &omnifunc = 'youcompleteme#OmniComplete'
			let &l:omnifunc = 'youcompleteme#OmniComplete'

			" If we don't have native filetype support but the omnifunc is set to YCM's
			" omnifunc because the previous file the user was editing DID have native
			" support, we remove our omnifunc.
		elseif &omnifunc == 'youcompleteme#OmniComplete'
			let &omnifunc = ''
			let &l:omnifunc = ''
		endif
	endfunction
"!!!!!!!!!!!!!!!!
" "------------------------------C++--------------------------
" " https://habr.com/ru/post/221267/
" 
" " make vim clang_complete.vmb -c 'so %' -c 'q'
" " path to directory where library can be found
" " let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" " let g:clang_library_path='/usr/lib/'
" " or path directly to the library file
" " let g:clang_library_path='/usr/lib/llvm3.5/lib/libclang.so.1'
" " let g:clang_library_path='~/dotvim/ycm_dir/clang+llvm-8.0.0-aarch64-linux-gnu/lib/'
" 
" " If equal to 1, it will do some snippets magic on code placeholders like
" " function argument, template parameters, etc.
" " let g:clang_snippets = 1
" 
" " let g:clang_snippets_engine = 'clang_complete'
" 
" " let g:clang_complete_auto = 1
" " If equal to 1, open quickfix window on error.
" 
" " let g:clang_complete_copen = 1
" let g:clang_snippets_engine = 'ultisnips'
" 
" " If equal to 0, nothing is selected.
" " If equal to 1, automatically select the first entry in the popup menu, but
" " without inserting it into the code.
" " If equal to 2, automatically select the first entry in the popup menu, and
" " insert it into the code.
" let g:clang_auto_select = 0
" 
" " Let clangd fully control code completion
" let g:ycm_clangd_uses_ycmd_caching = 1
" " Use installed clangd, not YCM-bundled clangd which doesn't get updates.
" " let g:ycm_clangd_binary_path = exepath("clangd")
" 
" 
" " Include additional hints (function arguments, templatest, etc.)
" let g:clang_snippets = 1
" 
" " Use ultispips for additional hints (for templates hints 
" " autogenerations were in dropdown menus)
" let g:ycm_use_clangd = 1
" 
" " let g:ycm_global_ycm_extra_conf = '~/dotvim/.ycm_extra_conf.py'
" " let g:ycm_global_ycm_extra_conf = '/home/_who/dotvim/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" "let g:ycm_global_ycm_extra_conf = '~/dotvim/.vim/plugged/YouCompleteMe/STUFF/.ycm_extra_conf.py'
" "let g:ycm_global_ycm_extra_conf = '~/dotvim/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" "let g:ycm_global_ycm_extra_conf = '~/WORK/cpp-prjects/test_prj/.ycm_extra_conf.py'
" 
" " Automatically close the tips window after selection a tooltip
" let g:clang_close_preview=1
" 
" 
" " If equal to 1, it will add optional arguments to the function call snippet.
" " Snippet replaceable object will not be only the argument, but the preceding
" " comma will be included as well, so you can press backspace to delete the
" " optional argument, while the replaceable is selected.
" let g:clang_complete_optional_args_in_snippets = 1
" 
" let g:clang_user_options = '-std=c++20'
" let g:clang_c_options = '-std=gnu20'
" let g:clang_cpp_options = '-std=c++20 -stdlib=libc++'
" 
" " Note: This option is specific to clang_complete snippets engine.
" " If equal to 1, clang_complete will add a trailing placeholder after functions
" " to let you add you continue writing code faster.
" " Default: 0
" "let g:clang_trailing_placeholder = 1
" 
" " Omnicppcomplete compatibility mode. Keeps omni auto-completion in control of
" " omnicppcomplete, disables clang's auto-completion (|g:clang_complete_auto|)
" " and enables only <C-X><C-U> as main clang completion function.
" " Default: 0
" "let g:clang_omnicppcomplete_compliance = 1
" "
" " args
" let g:ycm_clangd_args = ['-log=verbose', '-pretty']
" "------------------------------------------------------------

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

" let g:ycm_filepath_completion_use_working_dir = 1
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
set smarttab
set smartindent
set autoindent
set expandtab ts=4 sw=4 ai
" set expandtab

" latex (vimtext)
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode = 0

"Wrapping text by default
set wrap
set linebreak

" 256-color terminal
set t_Co=256

" colorscheme
colorscheme dracula
" colorscheme sublimemonokai
" colorscheme onedark

" Кодировка текста по умолчанию utf8
set termencoding=utf8

set encoding=utf-8

" Show (partial) command in the status line
set showcmd

" Не выгружать буфер, когда переключаемся на другой
set hidden

" Подсвечивать линию текста, на которой находится курсор
set cursorline

" Нумерация строк
set relativenumber
set number
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
let g:ycm_python_binary_path = '/usr/bin/python3.10'
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
" let g:tagbar_map_close = '<C-m>'

let g:tagbar_map_jump = '<C-m>'

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
" nnoremap <silent> <C-o> : call ChangeBuf(":bn")<CR>
" nnoremap <silent> <C-i> : call ChangeBuf(":bp")<CR>

" ~/.vimrc
set tags+=tags,tags.vendors
set tags+=tags;$HOME
set tags+=tags;/usr/bin/ctags
set tags+=/usr/share/doc/tags
" set tags+=/home/_who/Qt/Docs/tags
" set tags+=/home/_who/Qt/tags
" set tags+=/home/_who/Qt/Docs/Qt-5.15.2/qthelp/tags
set tags+=/home/_who/Qt/Docs/Qt-6.4.0/tags



"Setting Syntastic----------------------------------------------------------------

set statusline+=%#warningmsg#
" set statusline+=%{SyntacsicStatuslineFlag()}
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
" let g:slime_target = "tmux"

"-------------------------   ASNCRUN   -----------------------------------
" nnoremap <F3> :AsyncRun ctags -R<CR>
"
"------------------- Shortcut Create FILE C -------------------------------
"C++ Class Generator
 function! FileC(FileName)
   "================== editing source file ========================
     let src    = "srcs/".a:FileName.".c"
     " :vsp %:h/.cpp
     :execute ":vsp ".tolower(src)
     call append(0, "/* ".tolower(a:FileName).".c */")
     call append(2,"#include \"".tolower(a:FileName).".h\"")
     :execute 'write' tolower(src)
    "==================  editing header file =====================
     let header = "includes/".a:FileName.".h"
     " :vsp %:h/.hpp
     :execute ":vsp ".tolower(header)
     call append(0, "/* ".tolower(a:FileName).".h */")
     call append(2,"#ifndef SRC_".toupper(a:FileName)."_H_")
     call append(3,"#define SRC_".toupper(a:FileName)."_H_")
     call append(4,"#endif  // SRC_".toupper(a:FileName)."_H_")
     :execute 'write' tolower(header)
endfunction    "C++ Class Generator

command! -nargs=1 FileC call FileC(<f-args>)
"------------------- Shortcut Open File -------------------------------
"C File OPEN
 function! OpenC(FileName)
   "================== editing source file ========================
     let src    = "srcs/".a:FileName.".c"
     " :vsp %:h/.c
     :execute ":vsp ".tolower(src)
     :execute 'open' tolower(src)
    "==================  editing header file =====================
     let header = "includes/".a:FileName.".h"
     " :vsp %:h/.h
     :execute ":vsp ".tolower(header)
     :execute 'open' tolower(header)
endfunction    "C++ Class OPEN
command! -nargs=1 OpenC call OpenC(<f-args>)
"--------------------------------------------------------------------------

"------------------- Shortcut Create class -------------------------------
"C++ Class Generator
 function! Class(ClassName)
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
endfunction    "C++ Class Generator

command! -nargs=1 Class call Class(<f-args>)
"------------------- Shortcut Create class -------------------------------
"C++ Class OPEN
 function! Open(ClassName)
   "================== editing source file ========================
     let src    = "srcs/".a:ClassName.".cpp"
     " :vsp %:h/.cpp
     :execute ":vsp ".tolower(src)
     :execute 'open' tolower(src)
    "==================  editing header file =====================
     let header = "includes/".a:ClassName.".hpp"
     " :vsp %:h/.hpp
     :execute ":vsp ".tolower(header)
     :execute 'open' tolower(header)
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
  " exe "normal $o{\<CR>\<TAB>\<CR>}\<CR>\<ESC>kkkk"
  exe "normal $o{\<CR>\<TAB>\<CR>}\<CR>\<ESC>"
  " Fix indentation
  " exe 'normal =4j^'
  exe 'normal =4^'
endfunction

"--------------------------------------------------------------------------

" "-----     Neocopmlete    -------------------------------------------------
" let g:neocomplcache_enable_at_startup            = 1
" let g:neocomplcache_enable_smart_case            = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_underbar_completion   = 1
" let g:neocomplcache_min_syntax_length            = 2
" 
" if !exists('g:neocomplcache_force_omni_patterns')
"   let g:neocomplcache_force_omni_patterns = {}
" endif
" 
" let g:neocomplcache_force_overwrite_completefunc = 1
" 
" let g:neocomplcache_force_omni_patterns.c      = '[^.[:digit:] *\t]\%(\.\|->\)'
" let g:neocomplcache_force_omni_patterns.cpp    = '[^.[:digit:] *\t]\%(\.\|->\)'
"     \ . '\|\h\w*::'
" let g:neocomplcache_force_omni_patterns.objc   = '[^.[:digit:] *\t]\%(\.\|->\)'
"     \ . '\|\h\w*::'
" let g:neocomplcache_force_omni_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)'
"     \ . '\|\h\w*::'
" 
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"--------------------------------------------------------------------------
"--------------------------------------------------------------------------
"--------------------------------------------------------------------------


""  Use tab for trigger completion with characters ahead and navigate.
""" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
""" other plugin before putting this into your config.
""inoremap <silent><expr> <TAB>
""      \ pumvisible() ? "\<C-n>" :
""      \ <SID>check_back_space() ? "\<TAB>" :
""      \ coc#refresh()
""inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""
""function! s:check_back_space() abort
""  let col = col('.') - 1
""  return !col || getline('.')[col - 1]  =~# '\s'
""endfunction
""
""" Use <c-space> to trigger completion.
""inoremap <silent><expr> <c-space> coc#refresh()
""
""" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
""" position. Coc only does snippet and additional edit on confirm.
""if exists('*complete_info')
""  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
""else
""  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
""endif
""
""" Use `[g` and `]g` to navigate diagnostics
""nmap <silent> [g <Plug>(coc-diagnostic-prev)
""nmap <silent> ]g <Plug>(coc-diagnostic-next)
""
""" GoTo code navigation.
""nmap <silent> gd <Plug>(coc-definition)
""nmap <silent> gy <Plug>(coc-type-definition)
""nmap <silent> gi <Plug>(coc-implementation)
""nmap <silent> gr <Plug>(coc-references)
""
""" Use K to show documentation in preview window.
""nnoremap <silent> K :call <SID>show_documentation()<CR>
""
""function! s:show_documentation()
""  if (index(['vim','help'], &filetype) >= 0)
""    execute 'h '.expand('<cword>')
""  else
""    call CocAction('doHover')
""  endif
""endfunction
""
""" Highlight the symbol and its references when holding the cursor.
""autocmd CursorHold * silent call CocActionAsync('highlight')
""
""" Symbol renaming.

"--------------------------------------------------------------------------
function CheckFileType()
    if exists("b:countCheck") == 0
        let b:countCheck = 0
    endif

    let b:countCheck += 1
    if &fieltype == "" && b:countCheck > 20 && b:countCheck < 200
        filetype detect
    endif
endfunction

" let g:loaded_youcompleteme = 0
" let g:ycm_show_diagnostics_ui = 0
"--------------------------------------------------------------------------

let g:qthelp_browser="firefox"
nnoremap <F1> :QHelpOnThis<CR>

"-------------------------------- SLIME CONFIG ----------------------------

"------------------------------- DRACULA THEME ----------------------------

let g:dracula_bold = 0
let g:dracula_italic = 0
let g:dracula_underline = 0
let g:dracula_undercurl = 1

" vimspector
" packadd! vimspector
let g:vimspector_enable_mappings = 'HUMAN'

" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

" You may also wish to add mappings for navigating up/down the stack, toggling
" the breakpoints window, and showing disassembly, for example:

nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
nmap <LocalLeader><F12> <Plug>VimspectorDownFrame
nmap <LocalLeader>B     <Plug>VimspectorBreakpoints
nmap <LocalLeader>D     <Plug>VimspectorDisassemble



"------------------------------- ALE VIM ----------------------------------

" nnoremap <silent> <C-o> : call ChangeBuf(":bn")<CR>
" nnoremap <silent> <C-i> : call ChangeBuf(":bp")<CR>
nnoremap <silent> <C-o> <Plug>(ale_next)
nnoremap <silent> <C-i> <Plug>(ale_previous)
nnoremap <silent> <C-u> <Plug>(ale_reset)
nnoremap <silent> <C-1> : ALEFix <CR>

let g:ale_enabled = 0

" let g:ale_linters = {
" \   'c': ['ccls', 'clang'],
" \   'cpp': ['clang'],
" \   'javascript': ['eslint'],
" \    'php': ['php'],
" \   'python': ['pyls', 'flake8'],
" \   'vim': ['vint']
" \ }

" \   'python': ['black'],
let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'css': ['prettier'],
\   'go': ['gofmt'],
\   'html': ['prettier'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'php': ['prettier'],
\   'python': ['autopep8', 'yapf'],
\   'scss': ['prettier'],
\   'yaml': ['prettier'],
\ }

"------------------------------- vim-glsl shaders ----------------------------
" vim: set ft=glsl:
"------------------------------- show and hide numbers ----------------------------
nnoremap <silent> <C-9> : set nonumber norelativenumber <CR>
nnoremap <silent> <C-8> : set number relativenumber<CR>
"------------------------------- undotree ----------------------------
nnoremap <F2> :UndotreeToggle<CR>
set undofile
"------------------------------- undotree ----------------------------
