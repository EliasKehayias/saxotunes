import express from 'express';
import {getMousesCon, insertMousesCon, deleteMousesCon, updateMousesCon} from '../controller/mousesController.js'

const router = express.Router()


router.get('/', getMousesCon)
router.post('/', insertMousesCon)
router.delete('/', deleteMousesCon)
router.patch('/',updateMousesCon)

export default router
