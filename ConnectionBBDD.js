//coneccion a base de datos
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'users'
});

connection.connect((err) => {
    if (err) {
        console.error('Error de base de datos', err);
        return;
    }
});

module.exports = connection;
