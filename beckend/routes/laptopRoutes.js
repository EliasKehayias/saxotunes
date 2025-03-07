import express from 'express';

import {getLaptopsCon,insertlaptopsCon,updatelaptopsCon,deletelaptopsCon} from '../controller/laptopsController.js'
const router = express.Router()


router.get('/', getLaptopsCon)
router.post('/', insertlaptopsCon)
router.delete('/', deletelaptopsCon)
router.patch('/',updatelaptopsCon)

export default router
