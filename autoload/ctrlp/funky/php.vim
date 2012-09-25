" File: autoload/ctrlp/funky/php.vim
" Description: adds php support to ctrlp's funky extension
" Author: Scott Bader
" License: the MIT License

function! ctrlp#funky#php#filter(bufnr)
  let regex = '\m\C^[\t ]*\(\w\+\s\+\)\{0,3}function[\t ]\(\w\+[\t ]*\)'

  let filter = [{ 'pattern': regex,
                \ 'filter': ['\m\C^[\t ]*\(\w\+\s\+\)\{0,3}function[\t ]*', '', '']}
  \]

  return ctrlp#funky#abstract(a:bufnr, filter)
endfunction

" vim: fen:fdm=marker

