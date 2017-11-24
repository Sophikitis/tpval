



# INSTALL VIRTUAL ET VAGRANT 
sudo apt-get install virtualbox-qt;
sudo apt-get install vagrant;

#### VERIF VAGRANTFILE ####
if [ ! -f Vagrantfile ]; then
    vagrant init
    echo -e "
\033[44mLe fichier Vagrantfile a été généré !\033[0m"
else
    echo -e "
\033[45mUn Vagrantfile existe déjà dans ce dossier !\033[0m"
fi




########################### MAIN MENU ##############################
read -p "
 ____________________________________
| Quelle box voulez-vous utiliser ?  | 
| 1 - Xenial 64                      |
| 2 - Trusty 64                      |
 ____________________________________
" choix;

################################# XENIAL 64 ###################################"
if [[ $choix -eq 1 ]]
then 
    box="ubuntu\/xenial64";
#### VERIF DOSSIER DATAXENIAL ####
if [ ! -d dataXenial ]; then
    mkdir dataXenial
    echo -e "
\033[44mLe dossier dataXenial a été creer !\033[0m"
else
    echo -e "
\033[45mUn dossier dataXenial est deja existe deja !\033[0m"
fi
###### MODIF VAGRANT FILE #######

    sed -i -e "s/config.vm.box = \"base\"/config.vm.box = \"$box\"/g" Vagrantfile;
    sed -i -e "s=# config.vm.synced_folder \"..\/data\", \"\/vagrant_data\"=config.vm.synced_folder \"data\", \"/var/www/html\"=g" Vagrantfile;
    sed -i -e "s=# config.vm.network \"private_network\", ip: \"192.168.33.10\"=config.vm.network \"private_network\", ip: \"192.168.33.10\"=g" Vagrantfile;
    vagrant up;
    echo -e "
\033[47;1;30m--> voici les vagrant installé en cours d'utilisation :\033[0m";
VBoxManage list runningvms; 



   ####### MENU XENIAL #######
    read -p "
 _________________________________________________XENIAL 64____
| Menu :                                                        |  
| 1 - Eteindre la vagrant                                       |       
| 2 - Se connecter                                              |
| 3 - Se connecter et installer Apache2 / MySql Server / php7.0 |
 _______________________________________________________________
" menu;
if [[ $menu -eq 1 ]] 
then 
    vagrant halt;
elif [[ $menu -eq 2 ]]
then
    vagrant ssh;
elif [[ $menu -eq 3 ]]
then
    vagrant ssh;
    ## MAJ ##
    sudo apt-get update;
    sudo apt-get install apache2;
    sudo apt-get install mysql-server;
    sudo apt-get install php7.0;
else 
    echo "Saisie incorrect";
fi






###################################### TRUSTY 64 ######################################################"    
elif [[ $choix -eq 2 ]]
then
    box="ubuntu\/trusty64";
#### VERIF DOSSIER DATATRUSTY ####
if [ ! -d dataTrusty ]; then
    mkdir dataTrusty
    echo -e "
\033[44mLe dossier dataTrusty a été creer !\033[0m"
else
    echo -e "
\033[45mUn dossier dataTrusty est deja existe deja !\033[0m"
fi
###### MODIF VAGRANT FILE #######
    
    sed -i -e "s/config.vm.box = \"base\"/config.vm.box = \"$box\"/g" Vagrantfile;
    sed -i -e "s=# config.vm.synced_folder \"..\/data\", \"\/vagrant_data\"=config.vm.synced_folder \"data\", \"/var/www/html\"=g" Vagrantfile;
    sed -i -e "s=# config.vm.network \"private_network\", ip: \"192.168.33.10\"=config.vm.network \"private_network\", ip: \"192.168.33.10\"=g" Vagrantfile;
    vagrant up;
    echo -e "
\033[47;1;30m--> voici les vagrant installé en cours d'utilisation :\033[0m";
    VBoxManage list runningvms
   ####### MENU XENIAL #######
    read -p "
 _________________________________________________TRUSTY 64____
| Menu :                                                        |  
| 1 - Eteindre la vagrant                                       |       
| 2 - Se connecter                                              |
| 3 - Se connecter et installer Apache2 / MySql Server / php7.0 |
 _______________________________________________________________
" menu;
if [[ $menu -eq 1 ]] 
then 
    vagrant halt;
elif [[ $menu -eq 2 ]]
then
    vagrant ssh;
elif [[ $menu -eq 3 ]]
then
    vagrant ssh;
    ## MAJ ##
    sudo apt-get update;
    sudo apt-get install apache2;
    sudo apt-get install mysql-server;
    sudo apt-get install php7.0;
else 
    echo "Saisie incorrect";
fi

else
echo "Saisie incorrect";
fi
 



