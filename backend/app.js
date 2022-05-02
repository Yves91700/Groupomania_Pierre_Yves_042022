//************* Importations***************** */
const express = require("express");
const bodyParser = require("body-parser");
// importation de cors systeme de securité
const cors = require("cors");

// importation de morgan "http request logger"
const morgan = require("morgan");


// importation du module path qui fournit des utilitaires pour travailler avec les chemins de fichiers et de répertoires.
const path = require("path");

// Importation du module dotenv pour utiliser les variables d'environnement écrites dans le  fichier .env dans le répertoire racine du dossier backend
require("dotenv").config();

//on appelle express avec cette const et qui permet de créer l'application express
const app = express();

// log des requests et des responses
app.use(morgan("dev"));

/*********************** Déclarations et importation des routes***** */

const routesDesLikes = require("./routes/likeRoute");
const routesDesPosts = require("./routes/postRoute");
const routesDesComments = require ("./routes/commentRoute");
const routesDesUsers = require ("./routes/userRoute");









//************** Cross Origin Ressource Sharing (CORS)*************************************************************************** */
// système de securité  qui bloque les appels HTTP

app.use(cors());

//******************************************************************************************************************************* */

const db = require("./models");

//Connexion à la base de données
db.sequelize
  .authenticate()
  .then(() => {
    console.log(
      `La connection à la base de données ${process.env.DB_DATABASE} sur mysql a réussie !`
    );
  })
  .catch((error) => {
    console.log(
      "Echec la connection à la base de données mysql a échouée ! : ",
      error
    );
  }); 



app.use(express.json());

app.use(bodyParser.json());

// Gestion static qui permet les requêtes des images du répertoire /images indiqué au module Path
app.use("/images", express.static(path.join(__dirname, "images")));

//Route générale "./routes/userRoute" pour l'authentification et création utilisateur
app.use("/api/auth", routesDesUsers);

//Route générale "./routes/postRoute.js" pour la création, la modification et suppression des post
app.use("/api/posts", routesDesPosts);

//Route générale "./routes/commentRoute.js" pour la création, la modification et suppression des commentaire
app.use("/api/post", routesDesComments);

//Route générale "./routes/likeRoute.js" pour la gestion des likes et dislikes
app.use("/api/post", routesDesLikes);



//***************** Exportation*************** */
// on export avec module.export pour qu'on puisse y acceder depuis les autres fichiers
module.exports = app;
