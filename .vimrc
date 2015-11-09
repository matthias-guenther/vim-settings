set nocompatible " Be iMproved

let g:neosnippet#expand_word_boundary = 1
let g:plug_threads = 40

" Grab plug.vim if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged/')

Plug 'Eckankar/vim-latex-folding'
Plug 'Raimondi/delimitMate', { 'tag': '2.7' }
Plug 'Shougo/neosnippet.vim', { 'tag': 'ver.4.2' }
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'tag': 'ver.9.2', 'do': 'make' }
Plug 'bling/vim-airline' , { 'tag': 'v0.7' }
Plug 'botandrose/vim-testkey', { 'tag': 'v0.3.2' }
Plug 'christoomey/vim-tmux-navigator', { 'tag': 'v1.0' }
Plug 'danchoi/ri.vim', { 'tag': 'v1.2', 'for': 'ruby' }
Plug 'dkprice/vim-easygrep'
Plug 'gregsexton/gitv', { 'tag': 'v1.3' }
Plug 'idanarye/vim-merginal', { 'tag': '1.6.0' }
Plug 'jamessan/vim-gnupg'
Plug 'jez/vim-superman', { 'tag': '0.9.1' }
Plug 'junegunn/vim-easy-align', { 'tag': '2.10.0' }
Plug 'klen/unite-radio.vim'
Plug 'koron/nyancat-vim', { 'tag': 'v1.0' }
Plug 'matze/vim-move', { 'tag': 'v1.3'}
Plug 'mbbill/undotree',{ 'tag':  'rel_5.0' }
Plug 'nelstrom/vim-markdown-folding'
Plug 'reedes/vim-lexical', { 'tag': 'v1.1' }
Plug 'reedes/vim-litecorrect', { 'tag': 'v1.1' }
Plug 'reedes/vim-wordy', { 'tag': 'v1.1' }
Plug 'ryanoasis/vim-devicons', { 'tag': 'v0.6.1'}
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic', { 'tag': '3.7.0' }
Plug 'sheerun/vim-polyglot', { 'tag': 'v2.2.0' }
Plug 'sk1418/blockit', { 'tag': 'v1.0.0' }
Plug 'tomtom/tcomment_vim', { 'tag': '3.08' }
Plug 'tpope/vim-endwise', { 'tag': 'v1.2' }
Plug 'tpope/vim-eunuch', { 'tag': 'v.1.1' }
Plug 'tpope/vim-fugitive', { 'tag': 'v2.2' }
Plug 'tpope/vim-surround', { 'tag': 'v2.1' }
Plug 'tyru/open-browser.vim', { 'tag': 'v0.1.1' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/AutoTag', { 'tag': '1.13' }
Plug 'wellle/tmux-complete.vim', 'v0.0.7'
Plug 'wikimatze/tocdown', { 'tag': 'v.1.0.1', 'on': 'TocdownToggle' }
Plug 'xolox/vim-misc', { 'tag': '1.17.6' }
Plug 'xolox/vim-notes', { 'tag': '0.33.4' }

Plug 'junegunn/fzf', { 'tag': '0.10.9', 'dir': '~/.fzf', 'do': 'yes \| ./install' }

if has('lua')
  Plug 'Shougo/neocomplete.vim'
endif

if has('python')
  Plug 'jaxbot/github-issues.vim'
endif


call plug#end()


" General settings {{{

set laststatus=2
set number                                  " display line numbers
set modeline                                " check first lines of files for style information
set noerrorbells                            " turn of nasty error sounds
set autoindent                              " Copy indent from current line when starting a new line
set autoread                                " automatically read a file that has changed on disk
set showbreak=↪                             " show the symbol for wrapped lines
set history=5000                            " number of lines for command line history
set showmode                                " show the current modal mode
set showcmd                                 " show (partial) command in the last line of the screen
set nowarn                                  " do not warn, when shell command update the file you edit in Vim
set backspace=indent,eol,start              " allow backspacing over everything in insert mode
set ch=1                                    " height of the command line at the bottom
set ruler                                   " show the line and column number of the cursor position
set numberwidth=2                           " using only 2 column for number line presentation
set lazyredraw                              " no window redrawing during operations like macros, registers, ...
set ttyfast                                 " fast terminal connection, more characters will be sent to the screen
set splitbelow                              " splitting a window will put the new window below the current one
set splitright                              " splitting a window will put the new window right the current one
set synmaxcol=0                             " better scrolling for long lines
set spelllang=en_us                         " default language for spell checker
set spellfile=$HOME/.vim/spell/en.utf-8.add " spell file for additional correct English words
set spellsuggest=best,5                     " only display the 5 best suggestions
set viminfo='1000000,f1                     " save marks for 1 million files ('1000000), save global marks
set infercase                               " autocompletion in Insert Mode is case sensitive
set shortmess+=I                            " don't show startup message when opening Vim without a file
set noautochdir                             " don't change the current working directory when opening a new file
set cpoptions+=$                            " `cw` put a $ at the end instead of pure deletion
set completeopt=longest,menuone,preview     " modes for auto completion in insert mode
set tabstop=2                               " how many columns a tab counts
set shiftwidth=2                            " how many columns text is indented with the indent operations (<< and >>)
set softtabstop=2                           " how many columns
set expandtab                               " hitting tab in insert mode will produce number in spaces instead of tabs
set textwidth=100                           " maximum of text that is being inserted

set fillchars=""                            " get rid of silly characters in separators in the CMD
set incsearch " highlight search after you type it
" so /foo matches FOO and fOo, but /FOO only matches the former)
set ignorecase                              " case insensitive search
set smartcase                               " canceling out ignore for uppercase letter in search
set nohlsearch
set noswapfile                              " don't save swap files

set wrap      " when lines are longer the width of the window they will wrapped
set linebreak " wrap at a character in the breakat option

" external tool when using grep
if executable('pt')
  set grepprg=pt
elseif executable('ag')
  set grepprg=ag
endif

if has('cryptmethod')
  set cryptmethod=blowfish                    " encryption algorithm
endif

" Remove Vim' automatic comment prefixing (http://tilvim.com/2013/12/30/remove-comment-prefix-2.html)
autocmd FileType * setlocal formatoptions-=r formatoptions-=o

let mapleader = "," " change the leader to be a comma vs. backslash if not given

let &scrolloff=999-&scrolloff " current view is always centered

colorscheme github

set tags=tags,./tags,gems.tags,./gems.tags

" }}}
" Backups {{{

if !isdirectory($HOME . '/.vim/backup')
  call mkdir($HOME . '/.vim/backup')
endif

set backupext=~                 " backup file extension
set backupdir=$HOME/.vim/backup " directory of backups
set backupcopy=yes              " keep attributes of the original file
set backup                      " save files after close
set writebackup                 " make a backup of the original file when writing

" }}}
" Settings for my blog with jekyll {{{

" Marking YAML front matter information in markdown files as comments
autocmd BufNewFile,BufRead */_posts/*.md syntax match Comment /\%^---\_.\{-}---$/

" }}}
" Settings for autocmpletion in insert mode <C-n> {{{

" set autocompletion when CTRL-P or CTRL-N are used.
" It is also used for whole-line
" . ... scan the current buffer
" b ... scan other loaded buffers that are in the buffer list
" w ... buffers from other windows
" u ... scan unloaded buffers that are in the buffer list
" U ... scan buffers that are not in the buffer list
" ] ... tag completion
" i ... scan current and included files
set complete=i,.,b,w,u,U,]

" }}}
" Settings for displaying list chars {{{

" trails - white spaces
" extends: shows when a file name goes out the view (you have to scroll right in NERDTree)
" precedes: shows when a file name goes out the view (you have to scroll left like in NERDTree)
" nbsp: character to show for a non-breakable space
set listchars=tab:▸\ ,extends:❯,precedes:❮,trail:.,nbsp:~
set list             " enable predefined symbols for tabs, trails, ...

" }}}
" Settings for wildmenu completion {{{

if has("wildmenu")
  set wildmenu                           " enable a navigable list of suggestions
  set wildmode=full                      " zsh full-match, starts over with first match after last match reached
  set wig+=.git,.hg,.svn                 " version control
  set wig+=*.bmp,*.gif,*.ico,*.jpg,*.png " images
  set wig+=*.aux,*.out,*.toc             " LaTeX intermediate files
  set wig+=.DS_Store                     " Mac
  set wig+=*~,*.swp,*.tmp                " tmp and backup files
endif


" }}}
" Functions {{{
" Trailing whitespace removal {{{
fu! <SID>StripTrailingWhitespaces()
  " preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endf

" when file is saved, call the function to remove trailing whitespace
au BufWritePre * :call <SID>StripTrailingWhitespaces()
" }}}
" Insert date in the form yyyy-mm-dd at the end of a line, <F5> {{{
fu! InsertSpaceDate()
  let @x = " "
  let @x = @x . strftime("%Y-%m-%d")
  normal! "xp
  silent exec line(".") . "s/TODO/DONE"
endf

no <silent> <F5> $:call InsertSpaceDate() <CR>
ru functions/insert_spacedate.vim
" }}}
" Close all buffers except the current one :Bdeleteonly {{{
" Found solution under
" http://vim.1045645.n5.nabble.com/Close-all-buffers-except-the-one-you-re-in-td1183357.html
function! Buflist()
    redir => bufnames
    silent ls
    redir END
    let list = []
    for i in split(bufnames, "\n")
        let buf = split(i, '"' )
        call add(list, buf[-2])
    endfor
    return list
endfunction

function! Bdeleteonly()
    let list = filter(Buflist(), 'v:val != bufname("%")')
    for buffer in list
        exec "bdelete ".buffer
    endfor
endfunction

command! BdelOnly :silent call Bdeleteonly()
" }}}
" }}}
" Plugin settings {{{

ru! settings/*.vim
ru macros/matchit.vim " enable better matching for % command

" }}}
" Mappings {{{

ru mappings/commandline.vim               " using bash commands in the vim commandline
ru mappings/copy_paste_from_clipboard.vim " <C-c> for copy, <leader><C-v> for paste
ru mappings/esc_with_jk.vim               " emulare ESC with jk
ru mappings/fzf.vim                       " <C-p> start file search
ru mappings/gitv.vim                      " ,gv and ,gV for stating the browser
ru mappings/keep_cursor_joining_lines.vim " indent joining lines the right way
ru mappings/moving_wrapped_lines.vim      " Use hjkl in wrapped-lined files
ru mappings/nerdtree.vim                  " F2 will call NERDTreeToogle
ru mappings/pry.vim                       " ,pi to insert/delete 'require pry; binding pry'
ru mappings/quickediting.vim              " ,ba; ,bm; ,br; ,ev to edit files of vim repos
ru mappings/unite.vim                     " <leader>y search the yank history
ru mappings/vim_easy_align.vim            " press <CR> to start aligning
ru mappings/vim_testkeys.vim              " <leader>t run the test

" ,d to copy the file path to clipboard, very handy for file name completion for vimbook
nmap <leader>d :call system("xclip -i -selection clipboard", expand("%"))<CR>

" Press \cd to change the pwd to the current file you are in
nn \cd :lcd %:h<CR>

" Spellchecker: press ,s to toogle between spellchecker
nn <silent> <leader>s :set spell!<CR>

" Folding Toggling with <space>
nn <space> za

" Fixing the & command to save the flags of last substitution
no & :&&<CR>
xn & :&&<CR>

" Char replacement (good for creating vocabularly)
no <leader>bldots :%s/=/\& \\ldots \&/g<CR> " replace = through & \ldots &
no <leader>bendbackslashes :%s/$/ \\\\/<CR> " will add \\ to the end of each line
no <leader>_ :%s/_//g<CR>                   " delete all _
no <leader>rt :%s/\\t/  /g<CR>

" }}}
" Functions {{{

ru functions/highlight_81_characters.vim " call Highlight81Characters to see the highlighted text

" }}}
" Always go at the beginning of git commit message
augroup gitCommitEditMsg
  autocmd!
  autocmd BufReadPost *
    \ if @% == '.git/COMMIT_EDITMSG' |
    \   exe "normal gg" |
    \ endif
augroup END

let g:markdown_fenced_languages = ['ruby', 'vim', 'html', 'sh', 'erb=eruby']

" Textwrapping for commit messages
" Credit http://stackoverflow.com/questions/11023194/git-vim-automatically-wrap-long-commit-messages
autocmd Filetype gitcommit set textwidth=60

