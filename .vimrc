" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.
call pathogen#runtime_append_all_bundles() 
set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
set cursorline                    " Highlight current line

" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Or use vividchalk
colorscheme railscasts2

" Tab mappings.
" map <leader>tt :tabnew<cr>
" map <leader>te :tabedit
" map <leader>tc :tabclose<cr>
" map <leader>to :tabonly<cr>
" map <leader>tn :tabnext<cr>
" map <leader>tp :tabprevious<cr>
" map <leader>tf :tabfirst<cr>
" map <leader>tl :tablast<cr>
" map <leader>tm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" map nerd tree toggle
nmap <leader>d :NERDTreeToggle<CR>

"bind command-] to shift right
nmap <D-]> >>
vmap <D-]> >>
imap <D-]> <C-O>>>

"bind command-[ to shift left
nmap <D-[> <<
vmap <D-[> <<
imap <D-[> <C-O><<

" window splitting mappings
" split vertically with <leader> v
" split horizontally with <leader> s
nmap <leader>v :vsplit<CR> <C-w><C-w>
nmap <leader>s :split<CR> <C-w><C-w>

" Make it way easier to switch windows (<leader>w)
nmap <leader>w <C-w><C-w>_
nmap <leader>w <C-w><C-w>_


"open tabs with command-<tab number>
"map <D-S-]> gt
"map <D-S-[> gT
"map <D-≤> gt
"map <D-≥> gT
map <M-D-,> gt
map <M-D-.> gT
imap <D-≤> gt
imap <D-≥> gT

map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

"map commenting
nmap <D-/> <leader>ci <CR>
vmap <D-/> <leader>ci <CR>
imap <D-/> <C-O>,ci

" allow highlighting with shift
if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

let g:CommandTMatchWindowAtTop = 1

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" lets me quickly edit my vimrc file in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>g :tabedit $MYGVIMRC<CR>
