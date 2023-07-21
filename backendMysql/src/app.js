import express  from "express";
import cors from "cors";

//* ROUTES

import barrioRouter from "./routes/barrio.routes.js";

const app = express();

app.set("port",4000);
app.use(express.json());

const corsOptions = {
    methods: ["GET","POST","PUT","DELETE"]
}

app.use(cors(corsOptions));

app.use("/api/barrio",barrioRouter);

export default app;