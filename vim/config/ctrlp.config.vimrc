" config for 'kien/ctrlp.vim'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'raw'
" Ignores entries specified in .gitignore.
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others | grep -v "^\..*$"'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

