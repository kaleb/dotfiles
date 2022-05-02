if empty($XDG_CACHE_HOME)
  let $XDG_CACHE_HOME = $HOME.'/.cache'
endif
if empty($XDG_CONFIG_HOME)
  let $XDG_CONFIG_HOME = $HOME.'/.config'
endif

if !isdirectory($XDG_CACHE_HOME  . "/vim/swap")
  call mkdir($XDG_CACHE_HOME . "/vim/swap", "p")
endif
set directory=$XDG_CACHE_HOME/vim/swap//,/var/tmp//,/tmp//

if !isdirectory($XDG_CACHE_HOME . "/vim/backup")
  call mkdir($XDG_CACHE_HOME . "/vim/backup", "p")
endif
set backupdir=$XDG_CACHE_HOME/vim/backup//,/var/tmp//,/tmp//

" Double slash does not actually work for backupdir, here's a fix
au BufWritePre * let &backupext='@'.substitute(substitute(substitute(expand('%:p:h'), '/', '%', 'g'), '\', '%', 'g'), ':', '', 'g')

" see :help persistent-undo
if !isdirectory($XDG_CACHE_HOME . "/vim/undo")
  call mkdir($XDG_CACHE_HOME . "/vim/undo", "p")
endif
set undodir=$XDG_CACHE_HOME/vim/undo//,/var/tmp//,/tmp//
set undofile

set viminfo+=n$XDG_CACHE_HOME/vim/viminfo

set runtimepath-=~/.vim
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath-=~/.vim/after
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath-=~/.vim
set packpath^=$XDG_CONFIG_HOME/vim
set packpath-=~/.vim/after
set packpath+=$XDG_CONFIG_HOME/vim/after

source $XDG_CONFIG_HOME/vim/vimrc
