import creyentes from "../models/Creyentes.js";

const getCreyentes = async (req, res) => {
    try {
        const creyente = await creyentes.find();
        res.json(creyente);
    } catch (error) {
        console.log(error.message);
    }
}

const getCreyente = async (req, res) => {
    try {
        const creyente = await creyentes.findOne({_id: req.params.id});
        res.json(creyente);
    } catch (error) {
        console.log(error.message);
    }
}

const newCreyente = async (req, res) => {
    try {
        const {nombre, ministerio, nivelFormacion, edad, nivelRuta} = req.body;
        const creyente = new Creyente({nombre, ministerio, nivelFormacion});
    } catch (error) {
        
    }
}

export {
    getCreyentes,
    getCreyente
}