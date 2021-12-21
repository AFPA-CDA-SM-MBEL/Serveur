let express = require('express')
let app = express()

app.get("/", (req, res) => {
    res.send("Bonjour, le serveur écoute bien !")
})

app.get("/get", (req, res) => {
    let data = require("./data.json")
    res.send(data)
})

app.listen(3000, function () {
    console.log("Application d'exemple écoutant sur le port 3000 !")
})