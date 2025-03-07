import express from 'express';

import  {getCartCon, insertCartCon, deleteCartCon, updateCartCon} from '../controller/cartController.js ';


const router = express.Router()


router.get('/', getCartCon)
router.post('/', insertCartCon)
router.delete('/:idcart', deleteCartCon)
router.patch('/',updateCartCon)

export default router
