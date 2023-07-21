import mongoose from "mongoose";

const conectarDB = async () => {
    try {
        const conexion = await mongoose.connect(process.env.MONGO_URI, {
            useNewUrlParser: true,
            useUnifiedTopology: true
        })
        const url = `CONECTADO A LA BASE DE DATOS DE MONGO EN EL HOST ${conexion.connection.host} EN EL PUERTO ${conexion.connection.port}`;
        console.log(url);
    } catch (error) {
        console.log(error.message);
        console.log("LA CONEXIÓN A LA BASE DE DATOS ESTÁ FALLANDO");
    }
}

export default conectarDB;