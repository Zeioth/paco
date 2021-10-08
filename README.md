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
* **paco-grub-update**: Regenerates intramfs, and update GRUB. Equivalent to 'sudo mkinitcpio -P && sudo grub-mkconfig -o /boot/grub/grub.cfg && sudo update-grub'
* **paco-update-mirrors**: Updates your mirrors with the best performing ones available. Equivalent to 'sudo pacman-mirrors --country all --api --protocols all --set-branch testing && sudo pacman -Sy'
* **paco-services-running**: List all running services. Equivalent to 'systemctl list-units  --type=service  --state=running'
* **paco-fix-zhistory**: Run the commands necessary to auto-repair the history file.

Cool features
---------------------

* All aliases support autocompletion.
