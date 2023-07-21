import Router from "express";
import { validateDocument } from "../middlewares/validate.documents.js";
import { getCreyentes } from "../controllers/creyentes.controllers.js";

const router = Router();

router.get("/all", getCreyentes);

export default router;