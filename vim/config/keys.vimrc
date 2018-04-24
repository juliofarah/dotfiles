" visual mode: don't deselect text when identing
vnoremap > >gv
vnoremap < <gv

let mapleader = "\<Space>"

" leader y as yank to OS clipboard
" original keys: "*y
vmap <leader>y "+y
map <leader><space> :nohlsearch<CR>

" reload vim
map <silent> <leader>r :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" set mapping to navigate between open split windows
noremap <C-J> <C-W>j<C-W>_
noremap <C-k> <C-W>k<C-W>_
noremap <C-h> <C-W>h<C-W>_
noremap <C-l> <C-W>l<C-W>_

noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

" config for 'scrooloose/nerdtree'
map <F10> :NERDTreeToggle<CR>
map <F11> :NERDTreeFind<CR>

map <C-s>e :SyntasticCheck eslint<CR>
map <C-s>r :SyntasticCheck rubocop<CR>
map <C-s>s :SyntasticReset<CR>
