#!/bin/sh -e
#
# - edit vim config, then do a dry run to check for errors

vimrc="${HOME}/.vimrc"
! test -f "${HOME}/.vimrc" && vimrc="${HOME}/.vim/vimrc"
vim "$vimrc"

# Do a "dry run" to catch any errors (with vim.tiny if available to catch
# unwrapped optional compilation features also):
vim=vim
command -v vim.tiny >/dev/null && vim=vim.tiny
$vim +q
