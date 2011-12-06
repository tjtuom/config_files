" Font
set guifont=Monaco:h13.00

" No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen

  map <D-d> :bd<CR>
  map <D-r> :source ~/.vimrc<CR>:source ~/.gvimrc<CR>
  map <D-b> :BufExplorer<CR>
end

" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

