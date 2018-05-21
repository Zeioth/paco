# Custom methods
#========================================================
pacman_rm() {
  # For each parameter passed, remove the package and all its dependencies.
  for var in "$@"
  do
    sudo pacman -Rs "$var"
  done
}
    
pacman_rmdep() {
  # For each parameter passed, remove only the specified dependency.
  for var in "$@"
  do
    sudo pacman -Rdd "$var"
  done
}


# Custom aliases
#========================================================
alias paco-autoremove='sudo pacman -Rs $(pacman -Qqtd)'
alias paco-rm='pacman_rm'
alias paco-rmdep='pacman_rmdep'


# Autocomplete
#========================================================
# To delete autocomplete, run 'complete -r alias_name'
complete -c paco-rm
complete -c paco-rmdep
