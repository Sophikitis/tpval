README TP VALIDATION LINUX 1 - JEREMIE SOFFICHITI

BUT :

Installer automatiquement vagrant et virtualbox complete

UTILISATION :

Ouvrir le script :

ouvrir le termninal 
rejoindre le dossier ou se trouve le fichier script.sh avec la commande cd ( ex cd Bureau )
lancer le script avec la commande bash ( exemple bash script.sh



1 - Le script verifie si un fichier vagrantfile est deja present dans le dossier parent :
    - s'il est present il ne va pas le creer
    - s'il n'est pas present il va le creer

2 - Un choix apparait pour choisir quelle box vous voulez installer
3 - L'utilisateur doit simplement saisir le numero affiché a coté de la box choisie [ 1 pour Xenial  ou   2 pour trusty]

4 - le script verifier si un dossier specifique a la version choisie est deja present dans le dossier parent
( pour Xenial le dossier se nomme dataXenial et pour trusty le dossier se nomme dataXenial)

5 - affichage sur fond gris les vagrants installées et en cours d'utilisation

5 - Un menu apparait avec 3 choix, l'utilisateur devra saisir le numero affiché a coté du choix saisie
 --> 1 permet d'eteindre
 --> 2 permet de se connecter a la vagrant
 --> 3 permet de se connecter et d'installer les paquets apache2 mysqlserver et php7.0
