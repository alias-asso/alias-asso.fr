---
title: "MrPython"
logo: "🐍"
order: 3
---

L'ALIAS propose des installateurs automatiques pour MrPython. En cas de problème rencontré durant l'installation de ces outils, n'hésitez pas à contacter un membre actif de l'association.

Ces installateurs ont été développés de façon indépendantes au travail de M. Frédéric Peschanski. Prière de ne pas le déranger si vous rencontrez des soucis avec l'installateur de l'ALIAS.

## MacOS

Sur MacOS, il existe deux méthode d'installation. La première requiert de gérer l'installation des dépendances manuellement et la seconde requiert d'avoir installer [brew](https://brew.sh/).

## Méthode manuelle

Avant de commencer, il faut s'assurer d'avoir bien installé `python3` et `tkinter`. 

[Télécharger installateur](https://pkgs.alias-asso.fr/downloads/MrPython-5.1.6.dmg).

Un fichier d'installation dmg est disponible et gère le reste de l'installation. Votre ordinateur marquera très probablement que le logiciel provient d'un developpeur non identifié. Pour corriger cette erreur, allez dans `Réglages Systèmes/Confidentialité et sécurité` puis en bas de page cliquez sur `Ouvrir quand même`.

Vous pouvez ensuite utiliser MrPython comme toute autre application.

## Méthode brew

Si vous avez déjà installé brew, alors l'installation est bien plus simple et s'occupe directement de la gestion des librairies.

```sh
curl -fsSL https://pkgs.alias-asso.fr/install.sh | sh
brew install mrpython
```

Vous pouvez ensuite utiliser MrPython comme toute autre application.

## Windows

L'installateur automatique est actuellement en cours de développement.

## Fedora

L'installateur automatique est actuellement en cours de développement.

## Ubuntu/Linux Mint

L'installateur automatique est actuellement en cours de développement.

## Arch Linux

Sur Arch Linux, l'installation utilise d'avoir accès à l'[AUR](https://aur.archlinux.org/). Pour l'installation, un helper comme [yay](https://github.com/Jguer/yay) ou [paru](https://github.com/Morganamilo/paru) est recommendé.

On peut ensuite faire :

```sh
yay -S mrpython
mrpython
```
