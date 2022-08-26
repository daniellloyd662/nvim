"===============Windows Specific=====================
"Prevents 303 Error unable to open swap file
"set undodir=~/.vim/.undo//
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
"=====================================================

"remap ru to run the current file in vim using python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"remap jk to escape
:inoremap jk <Esc>

"Change cursor style to vertical line when in insert mode and bar when in normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"keep visual mode after indent
vnoremap > >gv
vnoremap < <gv

"Show line numbers
set number

"Remove highlight after search 
:let @/ = ""

"Remember code folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
