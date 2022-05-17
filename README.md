Projet 7 Groupomania : Formation "Créez un réseau social d'entreprise" Développeur Web OpenClassrooms
Le projet consiste à construire un réseau social interne pour les employés de Groupomania. Le but de cet outil est de faciliter les interactions entre collègues. Le département RH de Groupomania a laissé libre cours à son imagination pour les fonctionnalités du réseau et a imaginé plusieurs briques pour favoriser les échanges entre collègues.



￼



Périmètre
* la présentation des fonctionnalités doit être simple.
* la création d'un compte doit être simple et possible depuis un téléphone mobile.
* le profil doit contenir très peu d'informations pour que sa complétion soit rapide.
* la suppression du compte doit être possible.
* l'accès à un forum où les salariés publient des contenus multimédias doivent être présents.
* l'accès à un forum où les salariés publient des textes doivent être présents.
* les utilisateurs doivent pouvoir facilement repérer les dernières participations des employés.
* le ou la chargé-e de communication Groupomania doit pouvoir modérer les interactions entre salariés.
* le profil doit contenir très peu d'informations pour que sa complétion soit rapide.
* la suppression du compte doit être possible.
* l'accès à un forum où les salariés publient des contenus multimédias doivent être présents.
* l'accès à un forum où les salariés publient des textes doivent être présents.
* les utilisateurs doivent pouvoir facilement repérer les dernières participations des employés.
* le ou la chargé-e de communication Groupomania doit pouvoir modérer les interactions entre salariés.

Technologies utilisées :

VueJs + vuex + vuetify 
NodeJs + express + sequelize Mysql

Frontend:

Ouvrir le dossier Frontend dans le terminal de votre éditeur puis effectuer la commande :
npm install
 puis
npm  run serve 
si le navigateur ne s'ouvre pas automatiquement allez à :
http://localhost:8080/

Back-end :

Ouvrir le dossier Backend dans le terminal de votre éditeur puis effectuer la commande :
npm install puis
npm run start ou nodemon serve
le serveur se lance sur http://localhost:3000/

Base de données

Se connecter au serveur MySql de votre choix.
 Exécuter la commande: CREATE DATABASE groupomania;
 Vérifiez les identifiants du fichier config.js du dossier Backend dans le fichier .env ,
  puis importer le fichier groupomaniaBDD.sql present dans le code avec :

  mysql -u root -p groupomania < groupomaniaBDD.sql