import express from 'express';

import  {getUsersCon, insertUsersCon, deleteUsersCon, updateUsersCon} from '../controller/usersController.js';


const router = express.Router()


router.get('/', getUsersCon)
router.post('/', insertUsersCon)
router.delete('/:idusers', deleteUsersCon)
router.patch('/',updateUsersCon)

export default router
