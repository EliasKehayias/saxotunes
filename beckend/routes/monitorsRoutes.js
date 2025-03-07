import express from 'express';
import {getMonitorsCon, insertMonitorCon, deleteMonitorCon, updateMonitorCon} from '../controller/monitorsController.js'

const router = express.Router()


router.get('/', getMonitorsCon)
router.post('/', insertMonitorCon)
router.delete('/', deleteMonitorCon)
router.patch('/',updateMonitorCon)

export default router
