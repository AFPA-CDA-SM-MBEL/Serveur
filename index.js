let express = require("express")
let app = express()
let { Sequelize } = require("sequelize");
let mySQLidentifiants = require("./bdd/identifiants.json")

app.get("/", (req, res) => {
    res.send("Bonjour, le serveur écoute bien !")
})

app.get("/get", (req, res) => {
    let data = require("./data.json")
    res.send(data)
})

app.get("/getbdd", (req, res) => {
    let sequelize = new Sequelize(
        mySQLidentifiants["bdd"],
        mySQLidentifiants["user"],
        mySQLidentifiants["psw"],
        {
            dialect: "mysql",
            host: "localhost"
        }
    )
    try{
        sequelize.authenticate()
        sequelize.query("SELECT * FROM products").then(([results, metadata]) => {
            res.send(results)
        })
    }catch(error){
        res.send("Impossible de se connecter")
    }
})

app.listen(3000, function () {
    console.log("Application d'exemple écoutant sur le port 3000 !")
})