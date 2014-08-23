" From https://github.com/pivotalforks/vim-config/blob/master/init/language.vim
" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

autocmd BufWritePre * call StripTrailingWhitespace()
