import mongoose from "mongoose";

const creyentesSchema = mongoose.Schema(
    {
        nombre: {
            type: String,
            required: [true, "El nombre es obligatorio."],
            trim: true
        },
        ministerio: {
            type: String,
            required: [true, "El ministerio es obligatorio."],
            trim: true
        },
        nivelFormacion: {
            type: String,
            required: [true, "El nivel de formacion es obligatorio."],
            trim: true
        },
        edad: {
            type: String,
            required: [true, "La edad es obligaria."],
            trim: true
        },
        nivelRuta: {
            type: String,
            required: [true, "El nivel de ruta es obligatorio."],
            trim: true
        }
    },
    {
        timestamps: true
    }
)

const creyentes = mongoose.model("Creyentes", creyentesSchema, "creyentes");

export default creyentes;