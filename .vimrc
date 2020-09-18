set nocompatible              " vundle, required
filetype off                  " vundle, required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'valloric/youcompleteme'
let g:ycm_global_ycm_extra_conf = '/home/cambam/.vim/bundle/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

Plugin 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<CR>

call vundle#end()            " vundle, required
filetype plugin indent on    " vundle, required

Plugin 'rhysd/vim-clang-format'
autocmd FileType c ClangFormatAutoEnable

" Native settings
set expandtab
set tabstop=2
set number
syntax on

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

