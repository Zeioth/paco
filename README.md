# paco
Aliases to make the most common pacman commands more intuitive.

# Aliases

* **paco-autoremove**: pacman -Rs $(pacman -Qqtd) - Remove all orphan dependencies to free disk space.
* **paco-rm**: pacman -Rs - For each parameter passed, remove the package and all its dependencies. 
* **paco-rmdep**: pacman -Rdd - For each parameter passed, remove only the specified package ignoring dependencies.
