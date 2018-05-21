How to use
---------------------
Copy the content of .bashrc at the end of your own ~/.bashrc

Aliases
---------------------

* **paco-install**: For each parameter passed, install the package and all its dependencies. Equivalent to -> pacman -S
* **paco-rm**: For each parameter passed, remove the package and all its dependencies. Equivalent to -> pacman -Rs
* **paco-rmdep**: For each parameter passed, remove only the specified package. Equivalent to -> pacman -Rdd
* **paco-orphan**: Remove all orphan dependencies to free disk space. Equivalent to -> pacman -Rs $(pacman -Qqtd)


Cool features
---------------------

* All aliases support autocompletion.
