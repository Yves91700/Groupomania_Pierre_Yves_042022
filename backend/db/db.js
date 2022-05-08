/*
// Importation du module dotenv pour utiliser les variables d'environnement écrites dans le  fichier .env dans le répertoire racine du dossier backend
require("dotenv").config();

// importer mysql
const mysql =require("mysql");
console.log(mysql);


// les paramètres de connexion à la base de données

const db = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'Puffy91700@Fleury',
  database : 'groupomania'
});



 
db.connect((err) => {
  if (err) {
    return console.error(`error connecting:' ${err}`);
  } else{
    console.log('connecté à la base de données groupomania_social_network2');
    console.log( `connected as id ${db.threadId}`);
  }
});  
 
module.exports = db;*/