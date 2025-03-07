import express from 'express';

import  {getProductsCon, getProductByIdCon,insertProductsCon, deleteProductsCon, updateProductsCon} from '../controller/productsController.js';


const router = express.Router()


router.get('/', getProductsCon)
router.get('/:idproducts', getProductByIdCon)
router.post('/', insertProductsCon)
router.delete('/:idproducts', deleteProductsCon)
router.patch('/',updateProductsCon)

export default router
