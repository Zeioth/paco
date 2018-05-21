How to use
---------------------
Copy the content of .bashrc at the end of your own ~/.bashrc

Aliases
---------------------

* **paco-install**: Install the packages and all its dependencies. Equivalent to 'pacman -S'
* **paco-rm**: Remove the packages and all its dependencies. Equivalent to 'pacman -Rs'
* **paco-rmdep**: Remove only the specified packages. Equivalent to 'pacman -Rdd'
* **paco-autoremove**: Remove all orphan dependencies to free disk space. Equivalent to 'pacman -Rs $(pacman -Qqtd)'
* **paco-make**: Compile and install [a cloned github aur repository](https://www.youtube.com/watch?v=8Pv2TAXRw5o). Equivalent to 'makepkg -sri'
* **paco-add-key**: Mark the specified key as secure. Equivalent to 'gpg --recv-keys'


Cool features
---------------------

* All aliases support autocompletion.
