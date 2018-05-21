# paco
Aliases to make the most common pacman commands more intuitive.

# Aliases

* **paco-autoremove**: Remove all orphan dependencies to free disk space. Equivalent to pacman -Rs $(pacman -Qqtd)
* **paco-rm**: For each parameter passed, remove the package and all its dependencies. Equivalent to pacman -Rs
* **paco-rmdep**: For each parameter passed, remove only the specified package ignoring dependencies. Equivalent to pacman -Rdd
