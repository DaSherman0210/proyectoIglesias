import mysql from "promise-mysql";
import config from "./../config.js";

const dbConnection = mysql.createConnection({
    host: config.host,
    database: config.database,
    usuario: config.usuario,
    password: config.password
});

const getConnection = () => {
    return dbConnection;
}

export default getConnection;