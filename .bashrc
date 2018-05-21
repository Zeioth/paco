# Custom methods
#========================================================
pacman_install() {
  # For each parameter passed, install the package and all its dependencies.
  for var in "$@"
  do
    sudo pacman -S "$var"
  done
}

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
alias paco-install='pacman_install'
alias paco-rm='pacman_rm'
alias paco-rmdep='pacman_rmdep'
alias paco-autoremove='sudo pacman -Rs $(pacman -Qqtd)'


# Autocomplete
#========================================================
# To delete autocomplete, run 'complete -r alias_name'
complete -c paco-install
complete -c paco-rm
complete -c paco-rmdep
