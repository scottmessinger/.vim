" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Monaco:h12            " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=50 columns=200          " Window dimensions.

set guioptions-=r                 " Don't show right scrollbar
set nowrap
set macmeta

" Map command t to command-t
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif

" open new command-t selections in a tab
let g:CommandTAcceptSelectionTabMap='<CR>'

"open tabs with command-<tab number>
map <M-D-Left> gT
map <M-D-Right> gt

map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .gvimrc source $MYGVIMRC
endif
