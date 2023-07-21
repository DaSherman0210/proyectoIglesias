import { Router } from "express";
import { methodsHTTP as barrioControllers } from "../controllers/barrio.controllers.js";

const router = Router();

router.get("/", barrioControllers.getBarrio);
router.get("/:id", barrioControllers.getOneBarrio);
router.post("/", barrioControllers.addBarrio);
router.delete("/:id", barrioControllers.deleteBarrio);
router.put("/:id", barrioControllers.updateBarrio);

export default router;