" Shortcut shift + up/down to move a line
" https://vi.stackexchange.com/questions/2674/how-can-i-easily-move-a-line
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
nnoremap <S-j> :m-2<CR>
nnoremap <S-k> :m+<CR>
inoremap <S-j> <Esc>:m-2<CR>
inoremap <S-k> <Esc>:m+<CR>