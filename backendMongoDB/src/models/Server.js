import express from "express";
import cors from "cors";
import creyentesRouter from "../routes/creyentes.routes.js";
class Server {
    constructor(){
        this.app = express();
        this.port = process.env.PORT;

        // PATHS
        this.creyentesPath = "/api/creyentes";
        
        // MIDDLEWARE
        this.middleware();

        // ROUTES
        this.routes();
    }

    middleware(){
        this.app.use(cors());
        this.app.use(express.static('public'));
        this.app.use(express.json());
    }

    routes(){
        this.app.use(this.creyentesPath, creyentesRouter);
    }

    listener(){
        this.app.listen(this.port, () => {
            console.log(`Server is running in the port ${this.port}`);
        })
    }
}

export default Server;