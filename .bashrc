alias paco-mupdate-mirrors='sudo pacman-mirrors --country all --api --protocols all --set-branch stable && sudo pacman -Syyu'# Custom methods
#========================================================
pacman_install() {
  # For each parameter passed, install the package and all its dependencies.
  for var in "$@"
  do
    sudo pacman -S "$var"
  done
}

pacman_rm() {
  # For each parameter passed, remove only the specified package.
  for var in "$@"
  do
    sudo pacman -Rdd "$var"
  done
}
    
pacman_rmw() {
  # For each parameter passed, remove the package with all its dependencies.
  for var in "$@"
  do
    sudo pacman -Rs "$var"
  done
}

gpg_addkeys() {
  # For each parameter passed, add a new gpg key.
  for var in "$@"
  do
    gpg --recv-keys "$var"
  done
}

# Custom aliases
#========================================================
alias paco-install='pacman_install'
alias paco-rm='pacman_rm'
alias paco-rmwdeps='pacman_rmwdeps'
alias paco-autoremove='sudo pacman -Rs $(pacman -Qqtd)'
alias paco-add-keys='gpg_addkeys'
alias paco-make='makepkg -sri'
alias paco-unlockdb='sudo rm /var/lib/pacman/db.lck'
alias paco-kernel-hooks='sudo grub-mkconfig -o /boot/grub/grub.cfg && sudo mkinitcpio -P'
alias paco-mupdate-mirrors='alias paco-mupdate-mirrors='sudo pacman-mirrors --country all --api --protocols all --set-branch stable && sudo pacman -Syyu''
alias paco-aupdate-mirrors='sudo reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist'

# Autocomplete
#========================================================
# To delete autocomplete, run 'complete -r alias_name'
complete -c paco-install
complete -c paco-rm
complete -c paco-rmw
