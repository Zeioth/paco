How to use
---------------------
Copy the content of .bashrc at the end of your own ~/.bashrc

Aliases
---------------------

* **paco-install**: For each parameter passed, install the package and all its dependencies.
* **paco-rm**: For each parameter passed, remove the package and all its dependencies. Equivalent to -> pacman -Rs
* **paco-rmdep**: For each parameter passed, remove only the specified package ignoring dependencies. Equivalent to -> pacman -Rdd
* **paco-autoremove**: Remove all orphan dependencies to free disk space. Equivalent to -> pacman -Rs $(pacman -Qqtd)


Cool features
---------------------

* All aliases support autocompletion.
