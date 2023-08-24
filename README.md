# Clonez le projet 

Remplacer les addresses ip du fichier inventory par les vôtres
Faites la même choses dans les playbooks.
Créer un fichier playbook/mariadb/secret.yml dans le dossier de mariadb.
Remplacer dans playbook/mariadb/secret.yml les identifiants de votre base de données 
``` wordpress_db_user: "votre_user"
wordpress_db_password: "votre_db_password"
db_host: "votre_host"
devops_db: "votre_devops_db"
devsec_db: "votre_devsec_db"
devsecops_db: "votre_devsecops_db"
```

Et à la fin lancez le fichier install.sh 
``./install.sh``

Changez le /etc/hosts de votre machine de test comme 
par exemple ici ``IP_DE_S0 devops.com devsec.com devsecops.com
``