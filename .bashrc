#
# ~/.bashrc
#


# Env vars
#========================================================
export LIBVIRT_DEFAULT_URI="qemu:///system"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

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

fix_zhistory() {
  cd ~
  mv .zhistory .zhistory-corrupt
  strings -eS .zhistory-corrupt > .zhistory
  fc -R .zhistory
}

set_working_dir() {
  # All terminals after this command, will be opened in the current directory.
  # Or the one you specify.
  for var in "$@"
  do
    echo "$var" > ~/.cache/.last_dir 
  done
	if [ $# -eq 0 ]
  then
    pwd > ~/.cache/.last_dir
	fi
  echo '> Working directory saved.'
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
alias paco-make-srcinfo='makepkg --printsrcinfo > ./.SRCINFO'
alias paco-unlockdb='sudo rm /var/lib/pacman/db.lck'
alias paco-grub-update='sudo mkinitcpio -P && sudo grub-mkconfig -o /boot/grub/grub.cfg && sudo update-grub'
alias paco-update-mirrors='sudo pacman-mirrors --country all --api --protocols all --set-branch testing && sudo pacman -Syy'
alias paco-services-running='systemctl list-units  --type=service  --state=running'
alias paco-fix-zhistory='fix_zhistory'
alias swd='set_working_dir'
alias gh=cd ~/
alias f='cd $(fd --type f --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv --exclude .thunderbird --exclude .cargo | fzf)'
alias d='cd $(fd --type d --hidden --exclude .git --exclude node_modules --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv --exclude .thunderbird --exclude .cargo | fzf)'
alias x=$TERMINAL
alias e=exit


# Autocomplete
#========================================================
# To delete autocomplete, run 'complete -r alias_name'
#complete -c paco-install
#complete -c paco-rm
#complete -c paco-rmw
