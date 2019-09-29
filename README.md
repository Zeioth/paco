How to use
---------------------
Copy the content of .bashrc at the end of your own ~/.bashrc

Aliases
---------------------

* **paco-install**: Install the packages and all its dependencies. Equivalent to 'pacman -S'
* **paco-rm**: Remove only the specified packages. Equivalent to 'pacman -Rdd'
* **paco-rmw**: Remove the packages with all its dependencies. Equivalent to 'pacman -Rs'
* **paco-autoremove**: Remove all orphan dependencies to free disk space. Equivalent to 'pacman -Rs $(pacman -Qqtd)'
* **paco-make**: Compile and install a directory with a PKGBUILD file. Equivalent to 'makepkg -sri'
* **paco-add-keys**: Mark the specified key as secure. Equivalent to 'gpg --recv-keys'
* **paco-unlockdb**: Unlock pacman's db. Equivalent to 'sudo rm /var/lib/pacman/db.lck'
* **paco-kernel-hooks**: Register all your kernels in GRUB + hook all kernels and drivers. Equivalent to 'sudo grub-mkconfig -o /boot/grub/grub.cfg && mkinitcpio -P'
* **paco-mupdate-mirrors**: Updates your mirrors with the best performing ones available. Equivalent to 'alias paco-mupdate-mirrors='sudo pacman-mirrors --country all --api --protocols all --set-branch stable && sudo pacman -Syyu''
* **paco-aupdate-mirrors**: Updates your mirrors with the best performing ones available. Equivalent to 'sudo reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist'

Cool features
---------------------

* All aliases support autocompletion.
