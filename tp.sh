saisie="oui";
while [ $saisie != "stop" ]
do
echo " 
 ____________________________________________________
| Choisissez entre 1 et 6                            |
| 1 - pour se deplacer dans les fichiers             |
| 2 - pour Afficher le contenu d'un fichier          |
| 3 - Agir sur un fichier                            |
| 4 - Agir sur un dossier                            | 
| 5 - faire afficher une image                       |
| 6 - Chercher un mot dans un fichier en particulier |
 _____________________________________________________
Enter 'stop' anytime to quit
Entrez 'stop' à tout moment pour quitter";
read saisie;
if [ $saisie -eq 1 ]
then
	dossier="";
	echo "dans quel dossier ?"
	read dossier;
	cd $dossier;
    pwd;
    ls;
    echo '';
elif [[ $saisie -eq 2 ]]
then
    dossier="";
	echo "quel fichier lire?"
	read dossier;
    cat $dossier;
    echo '';
elif [[ $saisie -eq 3 ]]
then
    echo "Sur quel fichier voulez-vous agir ?";
    read fichier;

    echo " Choisissez votre option :
    a - Supprimer
    b- copier
    c- déplacer
    d- renommer

";  
    read saisieOption;
    case $saisieOption in 
        "a")
            rm $fichier;;
        "b")
            destination="";
            echo "Dans quel dossier doit-on copier le fichier ?"
            read destination;
            cp $fichier $destination;
            ls $destination;
            pwd $destination;;
        "c")
            destination="";
            echo "Dans quel dossier doit-on deplacer le fichier ?"
            read destination;
            mv $fichier $destination;;
        "d") 
            newName="";
            echo "Comment appelle-t-on le fichier ?"
            read newName;
            mv $fichier $newName;;
    esac
elif [[ $saisie -eq 4 ]]
then
    echo "Sur quel dossier voulez-vous agir ?";
    read dossier;

    echo " Choisissez votre option :
    a- Créer
    b- Supprimer
    c- déplacer
    d- renommer

";  
    read saisieOption;
    case $saisieOption in 
        "a")
            mkdir $dossier;;
        "b")
            rm $dossier;;
        "c")
            destination="";
            echo "Dans quel dossier doit-on deplacer le dossier ?"
            read destination;
            mv $dossier $destination;;
        "d") 
            newName="";
            echo "Comment appelle-t-on le dossier ?"
            read newName;
            mv $dossier $newName;;
    esac
elif [[ $saisie -eq 5 ]]
then
    echo "Quelle image voulez-vous afficher ? (N'oubliez pas l'extension ; ) )";
    read image;
    xdg-open $image;
elif [[ $saisie -eq 6 ]]
then 
    echo "Dans quel fichier doit-on chercher ?";
    read fichier;
    echo "Quel est le mot que vous souhaitez chercher ?";
    read mot;
    grep -r -c $mot $fichier;
fi

echo "ecrire stop pour arreter" ;
read saisie;


done



