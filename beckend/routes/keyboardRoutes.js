import express from 'express';
import {getKeyboardCon,insertKeyboardCon,updateKeyboardCon,deleteKeyboardCon} from "../controller/keyboardController.js";

const router = express.Router();


router.get('/', getKeyboardCon)
router.post('/', insertKeyboardCon)
router.delete('/', deleteKeyboardCon)
router.patch('/',updateKeyboardCon)

export default router
