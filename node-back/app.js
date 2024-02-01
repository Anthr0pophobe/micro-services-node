const express = require('express');
const bodyParser = require('body-parser');
const passport = require('passport');
const cors = require('cors');
const app = express();
const port = 3008;
const mysql = require('mysql2');
const fs = require('fs');

var connection=mysql.createConnection({host:"twitter-sql.mysql.database.azure.com", user:"khais", password:"anthro123!", database:"twitter-node", port:3306, ssl:{ca:fs.readFileSync("DigiCertGlobalRootCA.crt.pem")}});

connection.connect((err) => {
  if (err) {
    console.error('Erreur de connexion à MySQL :', err);
  } else {
    console.log('Connecté à la base de données MySQL');
  }
});

console.log(connection);



const apiRoutes = require('./app/routes/index');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(passport.initialize());
app.use(cors());

app.get('/', (req, res) => {
	res.json({ message: 'API Rest Twitter' });
});

app.use('/api', apiRoutes);

app.listen(port, () => {
	console.log(`Example app listening on port ${port}`);
});