set background=dark

set hlsearch
" Use incremental searching
set incsearch

"if has('mouse')
"  set mouse=a
"endif


" Set standard setting for PEAR coding standards
set tabstop=4
set shiftwidth=4

" Don't Auto expand tabs to spaces
set noexpandtab

" Auto indent after a {
set autoindent
set smartindent

" Linewidth to endless
set textwidth=0

" Do not wrap lines automatically
set nowrap

" Show line numbers by default
set number

" Jump 5 lines when running out of the screen
set scrolljump=5

" Indicate jump out of the screen when 3 lines before end of the screen
set scrolloff=3

" Repair wired terminal/vim settings
set backspace=start,eol

" Map <CTRL>-B to run PHP parser check
" noremap <C-B> :!php -l %<CR>

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=/home/pookey/funclist.txt dictionary+=/home/pookey/funclist.txt
" Use the dictionary completion
set complete-=k complete+=k

" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

set list
set listchars=tab:>-,trail:-
" set listchars=tab:>-,trail:-,eol:$
set ignorecase                  " caseinsensitive searches
set showmode                    " always show command or insert mode
set ruler                      " show line and column information
set showmatch                  " show matching brackets
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]
syntax on

" CTRL-C = SVN Commit
map <C-C> :w<CR>:!svn commit<CR>

" TODO is this same as syntax on?
syntax enable
