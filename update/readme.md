Notes:

La tache faut l'exécuter par des commandes.
Documenter les taches dans un script à “commiter sur git”
Traduire le sript 

0- Interconnexion des machines :
ssh thomas@10.49.22.178
Azerty

(Azzeddine connecter à thomas en ssh)
(Stevie connecter à thomas en ssh)


1-Authentification des comptes Github à GIT. (30 minutes)
git config --global user.name 
git remote add https://github.com/azzeddineslimani/tp1sysadmin.git

ssh key avec l’email du compte Github.


2- Serveur WEB : 
	2.1 : VM1 Ubuntu
node1		
	2.2 : VM2 Ubuntu
	node2




3- Serveur backup : NFS + Cron 
node3
Tutu Cron : Idée ⇒ lancée un script de backup chaque 30 minutes
https://linuxhint.com/crontab_in_linux/

NFS config : Dispo Azzeddine 
 

Tâches :

• L'équipe d’administration peut exploiter les serveurs avec ses cles ssh :
Playbook système => ok


• Le système crée un compte utilisateur par client pour cloisonner les données : Stevie
playbook users system à faire

• Un client a un virtualhost Apache associé à son domaine qui pointe vers son répertoire : Thomas
faire un chemin pour chaques client 

• Le système déploie un blog wordpress pour un client : Thomas
◦ cloner wordpress dans le repertoire de l’utilisateur sur Apache
◦ configurer le fichier wp-config.php pour indiquer l’adresse du serveur SQL et le compte utilisateur

• Les bases de données sont répliquées sur le format master/slave : Dris
info google tuto complet

• Les bases de données du serveur DB slave sont sauvegardées toutes les 30 minutes et collectées par un serveur de sauvegarde archivées
service ftp
cron toutes les 30min à faire


• Le système de résolution de nom est local et toutes les machines ont les noms de serveurs dans /etc/hosts : 
mettre en place dns

• Syslog : Azzeddine 
heartbeat (HA)
