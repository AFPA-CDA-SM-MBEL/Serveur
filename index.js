// Création du serveur.
let express = require("express")
let app = express()

// Importation de la bibliothèque pour gérer la BDD et des identifiants de connexion.
let { Sequelize, QueryTypes } = require("sequelize");
let mySQLidentifiants = require("./bdd/identifiants.json")

// Éxecution du serveur dans le dossier actuel pour accéder aux sous-dossiers.
app.use(express.static(__dirname))
const imageFolder = "images"

// Permets la récupération des paramèter de requête POST simplement.
var bodyParser = require("body-parser");
app.use(bodyParser.json())

// Route par défaut (racine) - Message d'accueil.
app.get("/", (req, res) => {
    res.send("Bonjour, le serveur écoute bien !")
})

// Route pour récupérer les données du JSON.
app.post("/get", (req, res) => {
    let data = require("./data.json")
    res.send(data)
})

// Route pour récupérer la liste de produits.
app.post("/getProductList", (req, res) => {
    // Connexion à la BDD.
    let sequelize = new Sequelize(
        mySQLidentifiants["bdd"],
        mySQLidentifiants["user"],
        mySQLidentifiants["psw"],
        {
            dialect: "mysql",
            host: "localhost"
        }
    )
    sequelize.authenticate().then(() => { // Si on a pus se connecter à la BDD
        // Requête de récupération des produits
        sequelize.query(
            "SELECT id, name, image, price, rating FROM products",
            {type: QueryTypes.SELECT}
        ).then(results => { // Si la requête est effectuée avec succès.
            // On indique où se trouvent les images avant d'envoyer les données au client.
            for (let i = 0; i < results.length; i++) {
                results[i]["image"] = [imageFolder, results[i]["image"]].join("/")
            }
            res.send(results)
        }).catch(() => {  // Si une erreur s'est produit lors de la requête.
            res.send("Une erreur s'est produite lors de la requête !")
        })
    }).catch(() => {  // Si une erreur s'est produite lors de la conenxion à la BDD
        res.send("Impossible de se connecter à la BDD.")
    }).finally(() => {
        sequelize.close()
    })
})

// Route pour récupérer les données de la BDD.
app.post("/getProductDetails", (req, res) => {
    if(req.body.id === undefined){
        res.send("ID is missing.")
        return
    }
    // Connexion à la BDD.
    let sequelize = new Sequelize(
        mySQLidentifiants["bdd"],
        mySQLidentifiants["user"],
        mySQLidentifiants["psw"],
        {
            dialect: "mysql",
            host: "localhost"
        }
    )
    sequelize.authenticate().then(() => { // Si on a pus se connecter à la BDD
        // Requête de récupération du détail d'un produit
        sequelize.query(
            `SELECT * FROM products WHERE id=${req.body.id}`,
            {type: QueryTypes.SELECT}
        ).then(results => { // Si la requête est effectuée avec succès.
            // On indique où se trouvent les images avant d'envoyer les données au client.
            for (let i = 0; i < results.length; i++) {
                results[i]["image"] = [imageFolder, results[i]["image"]].join("/")
            }
            res.send(results)
        }).catch(() => {  // Si une erreur s'est produit lors de la requête.
            res.send("Une erreur s'est produite lors de la requête !")
        })
    }).catch(() => {  // Si une erreur s'est produite lors de la conenxion à la BDD
        res.send("Impossible de se connecter à la BDD.")
    }).finally(() => {
        sequelize.close()
    })
})

// On démarre le serveur en indiquand le port.
app.listen(3000, () => {
    console.log("Application d'exemple écoutant sur le port 3000 !")
})