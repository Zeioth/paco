#
# ~/.bashrc
#


# Env vars
#========================================================
export LIBVIRT_DEFAULT_URI="qemu:///system"

# Custom methods
#========================================================
pacman_install() {
  # For each parameter passed, install the package and all its dependencies.
  for var in "$@"
  do
    sudo pacman -S "$var"
  done
}

pacman_install_force() {
  # For each parameter passed, install the package and all its dependencies overwriting files in conflict.
  for var in "$@"
  do
    sudo pacman -S "$var" --overwrite '*'
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
alias paco-install-force='pacman_install_force'
alias paco-rm='pacman_rm'
alias paco-rmwdeps='pacman_rmwdeps'
alias paco-autoremove='sudo pacman -Rs $(pacman -Qqtd)'
alias paco-add-keys='gpg_addkeys'
alias paco-make='makepkg -sri'
alias paco-unlockdb='sudo rm /var/lib/pacman/db.lck'
alias paco-grub-update='sudo mkinitcpio -P && sudo grub-mkconfig -o /boot/grub/grub.cfg && sudo update-grub'
alias paco-update-mirrors='sudo pacman-mirrors --country all --api --protocols all --set-branch testing && sudo pacman -Syyu'
alias paco-services-running='systemctl list-units  --type=service  --state=running'

# Autocomplete
#========================================================
# To delete autocomplete, run 'complete -r alias_name'
#complete -c paco-install
#complete -c paco-rm
#complete -c paco-rmw
