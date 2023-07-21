import getConnection from "../db/database.js";

const getBarrio = async (req,res) => {
    try {
        const connection = await getConnection();
        const result = await connection.query("SELECT * FROM Barrio");
        res.json(result);
    } catch (error) {
        console.log(error);
    }
}

const getOneBarrio = async (req,res) => {
    try {
        const {idBarrio} = req.params;
        const connection = await getConnection();
        const result = await connection.query("SELECT * FROM Barrio WHERE idBarrio = ?",idBarrio);
        res.json(result);
    } catch (error) {
        console.log(error);
    }
}

const deleteBarrio = async (req,res) => {
    try {
        const {idBarrio} = req.params;
        const connection = await getConnection();
        const result = await connection.query("DELETE FROM Barrio WHERE idBarrio = ?",idBarrio);
        res.json(result)
    } catch (error) {
        console.log(error);
    }
}

const addBarrio = async (req,res) => {
    try {
        const {nombreBarrio,idComuna} = req.body;
        const barrio = {
            nombreBarrio,
            idComuna
        }
        const connection = await getConnection();
        const result = await connection.query("INSERT INTO Barrio SET ?",barrio);
        res.json(result);
    } catch (error) {
        console.log(error);
    }
}

const updateBarrio = async (req,res) => {
    try {
        const {idBarrio} = req.params;
        const {nombreBarrio,idComuna} = req.body;
        const  barrio = {
            nombreBarrio,
            idComuna
        }
        const connection = await getConnection();
        const result = await connection.query("UPDATE Barrio SET ? WHERE idBarrio = ?",[barrio,idBarrio]);
        res.json(result);
    } catch (error) {
        console.log(error);
    }
}

export const methodsHTTP = {getBarrio,getOneBarrio,deleteBarrio,addBarrio,updateBarrio};